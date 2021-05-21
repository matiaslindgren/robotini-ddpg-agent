import argparse
import sys

import tensorflow as tf
import numpy as np
from tf_agents.trajectories.time_step import TimeStep

from robotini_ddpg.simulator.connection import CarConnection
from robotini_ddpg.features import camera_frames_to_observation, observation_shape


step_type = np.zeros(1, np.int32)
reward = np.zeros(1, np.float32)
discount = np.ones(1, np.float32)

def dummy_timestep(observation):
    return TimeStep(step_type, reward, discount, observation)


def run(trained_policy_dir, car_socket_url, car_id, car_color, team_id, forward_action_multiplier):
    policy = tf.saved_model.load(trained_policy_dir)
    policy_state = policy.get_initial_state()

    with CarConnection(car_socket_url, car_id, car_color, team_id) as car_connection:
        while True:
            # Read one frame, block forever
            frames = car_connection.read_camera_frames(wait_on_first=1e6)
            # Extract features
            _, observation = camera_frames_to_observation(frames)
            # Time step batch containing one observation
            observation = np.expand_dims(observation, 0)
            # Evaluate next action using the trained policy
            policy_step = policy.action(dummy_timestep(observation), policy_state)
            policy_state = policy_step.state
            # Apply action in simulator
            action = policy_step.action[0]
            car_connection.send_command(
                {"action": "forward",
                 "value": forward_action_multiplier*float(action[0])})
            car_connection.send_command(
                {"action": "turn",
                 "value": float(action[1])})


if __name__ == "__main__":
    parser = argparse.ArgumentParser()

    def add_arg(arg):
        parser.add_argument(arg, type=str, required=True)
    add_arg("--trained-policy-dir")
    add_arg("--car-socket-url")
    add_arg("--car-id")
    add_arg("--car-color")
    add_arg("--team-id")
    parser.add_argument("--forward-action-multiplier", type=float, default=1.0)

    args, sys.argv[1:] = parser.parse_known_args()
    run(**vars(args))
