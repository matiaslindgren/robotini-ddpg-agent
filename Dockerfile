FROM tensorflow/tensorflow:2.4.1

ENV robotini_ddpg_src_url=https://github.com/matiaslindgren/robotini-ddpg/archive/refs/heads/main.zip

# Install required Python packages
RUN pip install --upgrade pip \
	&& pip install tf-agents sklearn $robotini_ddpg_src_url

WORKDIR /app
COPY final_koira_step11800_ddpg /app/trained-policy
COPY run.py /app

ENV team_id="smol-brain"
ENV team_name="smol brain neural net"
ENV team_color="#000000"
# ENV SIMULATOR="192.168.0.157:11000"

ENTRYPOINT python3 -u run.py \
	--trained-policy-dir=/app/trained-policy \
	--car-socket-url="$SIMULATOR" \
	--car-id="$team_name" \
	--team-id="$team_id" \
	--car-color="$car_color"
