??

??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12unknown8??	
j
global_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
?
ActorRnnNetwork/action/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_nameActorRnnNetwork/action/kernel
?
1ActorRnnNetwork/action/kernel/Read/ReadVariableOpReadVariableOpActorRnnNetwork/action/kernel*
_output_shapes
:	?*
dtype0
?
ActorRnnNetwork/action/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameActorRnnNetwork/action/bias
?
/ActorRnnNetwork/action/bias/Read/ReadVariableOpReadVariableOpActorRnnNetwork/action/bias*
_output_shapes
:*
dtype0
?
%ActorRnnNetwork/dynamic_unroll/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%ActorRnnNetwork/dynamic_unroll/kernel
?
9ActorRnnNetwork/dynamic_unroll/kernel/Read/ReadVariableOpReadVariableOp%ActorRnnNetwork/dynamic_unroll/kernel* 
_output_shapes
:
??*
dtype0
?
/ActorRnnNetwork/dynamic_unroll/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*@
shared_name1/ActorRnnNetwork/dynamic_unroll/recurrent_kernel
?
CActorRnnNetwork/dynamic_unroll/recurrent_kernel/Read/ReadVariableOpReadVariableOp/ActorRnnNetwork/dynamic_unroll/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
#ActorRnnNetwork/dynamic_unroll/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#ActorRnnNetwork/dynamic_unroll/bias
?
7ActorRnnNetwork/dynamic_unroll/bias/Read/ReadVariableOpReadVariableOp#ActorRnnNetwork/dynamic_unroll/bias*
_output_shapes	
:?*
dtype0
?
&ActorRnnNetwork/input_mlp/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*7
shared_name(&ActorRnnNetwork/input_mlp/dense/kernel
?
:ActorRnnNetwork/input_mlp/dense/kernel/Read/ReadVariableOpReadVariableOp&ActorRnnNetwork/input_mlp/dense/kernel*
_output_shapes
:	?*
dtype0
?
$ActorRnnNetwork/input_mlp/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$ActorRnnNetwork/input_mlp/dense/bias
?
8ActorRnnNetwork/input_mlp/dense/bias/Read/ReadVariableOpReadVariableOp$ActorRnnNetwork/input_mlp/dense/bias*
_output_shapes	
:?*
dtype0
?
(ActorRnnNetwork/input_mlp/dense/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*9
shared_name*(ActorRnnNetwork/input_mlp/dense/kernel_1
?
<ActorRnnNetwork/input_mlp/dense/kernel_1/Read/ReadVariableOpReadVariableOp(ActorRnnNetwork/input_mlp/dense/kernel_1* 
_output_shapes
:
??*
dtype0
?
&ActorRnnNetwork/input_mlp/dense/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&ActorRnnNetwork/input_mlp/dense/bias_1
?
:ActorRnnNetwork/input_mlp/dense/bias_1/Read/ReadVariableOpReadVariableOp&ActorRnnNetwork/input_mlp/dense/bias_1*
_output_shapes	
:?*
dtype0

NoOpNoOp
? 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
k
policy_state_spec

train_step
metadata
model_variables
_all_assets

signatures
 
FD
VARIABLE_VALUEglobal_step%train_step/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
	2

3
4
5
6
7
8

0
1
2
 
_]
VARIABLE_VALUEActorRnnNetwork/action/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEActorRnnNetwork/action/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE%ActorRnnNetwork/dynamic_unroll/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE/ActorRnnNetwork/dynamic_unroll/recurrent_kernel,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE#ActorRnnNetwork/dynamic_unroll/bias,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE&ActorRnnNetwork/input_mlp/dense/kernel,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE$ActorRnnNetwork/input_mlp/dense/bias,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE(ActorRnnNetwork/input_mlp/dense/kernel_1,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE&ActorRnnNetwork/input_mlp/dense/bias_1,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE

ref
1

ref
1

ref
1
?
_state_spec
_flat_action_spec
_input_layers
_dynamic_unroll
_output_layers
_action_layers
regularization_losses
	variables
trainable_variables
	keras_api
 

	state
1
 

0
 1
!2
\
"cell
#regularization_losses
$	variables
%trainable_variables
&	keras_api

'0

(0
 
?
0
1
2
3
	4

5
6
7
8
?
0
1
2
3
	4

5
6
7
8
?
)metrics
regularization_losses
*non_trainable_variables
	variables

+layers
trainable_variables
,layer_regularization_losses
-layer_metrics
R
.regularization_losses
/	variables
0trainable_variables
1	keras_api
h

kernel
bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
h

kernel
bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
~

	kernel

recurrent_kernel
bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
 

	0

1
2

	0

1
2
?
>metrics
#regularization_losses
?non_trainable_variables
$	variables

@layers
%trainable_variables
Alayer_regularization_losses
Blayer_metrics
R
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
h

kernel
bias
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
 
 
*
0
 1
!2
3
'4
(5
 
 
 
 
 
?
Kmetrics
.regularization_losses
Lnon_trainable_variables
/	variables

Mlayers
0trainable_variables
Nlayer_regularization_losses
Olayer_metrics
 

0
1

0
1
?
Pmetrics
2regularization_losses
Qnon_trainable_variables
3	variables

Rlayers
4trainable_variables
Slayer_regularization_losses
Tlayer_metrics
 

0
1

0
1
?
Umetrics
6regularization_losses
Vnon_trainable_variables
7	variables

Wlayers
8trainable_variables
Xlayer_regularization_losses
Ylayer_metrics
 

	0

1
2

	0

1
2
?
Zmetrics
:regularization_losses
[non_trainable_variables
;	variables

\layers
<trainable_variables
]layer_regularization_losses
^layer_metrics
 
 

"0
 
 
 
 
 
?
_metrics
Cregularization_losses
`non_trainable_variables
D	variables

alayers
Etrainable_variables
blayer_regularization_losses
clayer_metrics
 

0
1

0
1
?
dmetrics
Gregularization_losses
enon_trainable_variables
H	variables

flayers
Itrainable_variables
glayer_regularization_losses
hlayer_metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Z
action_0/discountPlaceholder*
_output_shapes
:*
dtype0*
shape:
m
action_0/observationPlaceholder*"
_output_shapes
:*
dtype0*
shape:
X
action_0/rewardPlaceholder*
_output_shapes
:*
dtype0*
shape:
[
action_0/step_typePlaceholder*
_output_shapes
:*
dtype0*
shape:
]

action_1/0Placeholder*
_output_shapes
:	?*
dtype0*
shape:	?
]

action_1/1Placeholder*
_output_shapes
:	?*
dtype0*
shape:	?
?
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_type
action_1/0
action_1/1&ActorRnnNetwork/input_mlp/dense/kernel$ActorRnnNetwork/input_mlp/dense/bias(ActorRnnNetwork/input_mlp/dense/kernel_1&ActorRnnNetwork/input_mlp/dense/bias_1%ActorRnnNetwork/dynamic_unroll/kernel/ActorRnnNetwork/dynamic_unroll/recurrent_kernel#ActorRnnNetwork/dynamic_unroll/biasActorRnnNetwork/action/kernelActorRnnNetwork/action/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 ::	?:	?*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_89334065
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_89334073
?
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_89334085
?
StatefulPartitionedCall_1StatefulPartitionedCallglobal_step*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_89334081
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameglobal_step/Read/ReadVariableOp1ActorRnnNetwork/action/kernel/Read/ReadVariableOp/ActorRnnNetwork/action/bias/Read/ReadVariableOp9ActorRnnNetwork/dynamic_unroll/kernel/Read/ReadVariableOpCActorRnnNetwork/dynamic_unroll/recurrent_kernel/Read/ReadVariableOp7ActorRnnNetwork/dynamic_unroll/bias/Read/ReadVariableOp:ActorRnnNetwork/input_mlp/dense/kernel/Read/ReadVariableOp8ActorRnnNetwork/input_mlp/dense/bias/Read/ReadVariableOp<ActorRnnNetwork/input_mlp/dense/kernel_1/Read/ReadVariableOp:ActorRnnNetwork/input_mlp/dense/bias_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_save_89334148
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameglobal_stepActorRnnNetwork/action/kernelActorRnnNetwork/action/bias%ActorRnnNetwork/dynamic_unroll/kernel/ActorRnnNetwork/dynamic_unroll/recurrent_kernel#ActorRnnNetwork/dynamic_unroll/bias&ActorRnnNetwork/input_mlp/dense/kernel$ActorRnnNetwork/input_mlp/dense/bias(ActorRnnNetwork/input_mlp/dense/kernel_1&ActorRnnNetwork/input_mlp/dense/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference__traced_restore_89334188??
??
?

__inference_action_2552198
time_step_step_type
time_step_reward
time_step_discount
time_step_observation
policy_state_0
policy_state_1B
>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resourceC
?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resourceD
@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resourceE
Aactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resourceK
Gactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceM
Iactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourceL
Hactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource9
5actorrnnnetwork_action_matmul_readvariableop_resource:
6actorrnnnetwork_action_biasadd_readvariableop_resource
identity

identity_1

identity_2??-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?,ActorRnnNetwork/action/MatMul/ReadVariableOp??ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpX
ConstConst*
_output_shapes
:*
dtype0*
valueB:2
Constm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Const:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constg
zerosFillconcat:output:0zeros/Const:output:0*
T0*
_output_shapes
:	?2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Const:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Consto
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	?2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yc
EqualEqualtime_step_step_typeEqual/y:output:0*
T0*
_output_shapes
:2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subX
ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
Shape{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2Shape:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2d
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*
_output_shapes

:2	
Reshape|
SelectV2SelectV2Reshape:output:0zeros:output:0policy_state_0*
T0*
_output_shapes
:	?2

SelectV2?

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0policy_state_1*
T0*
_output_shapes
:	?2

SelectV2_1?
ActorRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ActorRnnNetwork/ExpandDims/dim?
ActorRnnNetwork/ExpandDims
ExpandDimstime_step_observation'ActorRnnNetwork/ExpandDims/dim:output:0*
T0*&
_output_shapes
:2
ActorRnnNetwork/ExpandDims?
 ActorRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 ActorRnnNetwork/ExpandDims_1/dim?
ActorRnnNetwork/ExpandDims_1
ExpandDimstime_step_step_type)ActorRnnNetwork/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/ExpandDims_1?
#ActorRnnNetwork/batch_flatten/ShapeConst*
_output_shapes
:*
dtype0	*5
value,B*	"                             2%
#ActorRnnNetwork/batch_flatten/Shape?
+ActorRnnNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2-
+ActorRnnNetwork/batch_flatten/Reshape/shape?
%ActorRnnNetwork/batch_flatten/ReshapeReshape#ActorRnnNetwork/ExpandDims:output:04ActorRnnNetwork/batch_flatten/Reshape/shape:output:0*
T0*"
_output_shapes
:2'
%ActorRnnNetwork/batch_flatten/Reshape?
ActorRnnNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/flatten/Const?
ActorRnnNetwork/flatten/ReshapeReshape.ActorRnnNetwork/batch_flatten/Reshape:output:0&ActorRnnNetwork/flatten/Const:output:0*
T0*
_output_shapes

:2!
ActorRnnNetwork/flatten/Reshape?
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?
&ActorRnnNetwork/input_mlp/dense/MatMulMatMul(ActorRnnNetwork/flatten/Reshape:output:0=ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/MatMul?
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?
'ActorRnnNetwork/input_mlp/dense/BiasAddBiasAdd0ActorRnnNetwork/input_mlp/dense/MatMul:product:0>ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/input_mlp/dense/BiasAdd?
$ActorRnnNetwork/input_mlp/dense/ReluRelu0ActorRnnNetwork/input_mlp/dense/BiasAdd:output:0*
T0*
_output_shapes
:	?2&
$ActorRnnNetwork/input_mlp/dense/Relu?
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp?
(ActorRnnNetwork/input_mlp/dense/MatMul_1MatMul2ActorRnnNetwork/input_mlp/dense/Relu:activations:0?ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(ActorRnnNetwork/input_mlp/dense/MatMul_1?
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOpAactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1BiasAdd2ActorRnnNetwork/input_mlp/dense/MatMul_1:product:0@ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2+
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1?
&ActorRnnNetwork/input_mlp/dense/Relu_1Relu2ActorRnnNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/Relu_1?
3ActorRnnNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3ActorRnnNetwork/batch_unflatten/strided_slice/stack?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2?
-ActorRnnNetwork/batch_unflatten/strided_sliceStridedSlice,ActorRnnNetwork/batch_flatten/Shape:output:0<ActorRnnNetwork/batch_unflatten/strided_slice/stack:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_1:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2/
-ActorRnnNetwork/batch_unflatten/strided_slice?
%ActorRnnNetwork/batch_unflatten/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2'
%ActorRnnNetwork/batch_unflatten/Shape?
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stack?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2?
/ActorRnnNetwork/batch_unflatten/strided_slice_1StridedSlice.ActorRnnNetwork/batch_unflatten/Shape:output:0>ActorRnnNetwork/batch_unflatten/strided_slice_1/stack:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask21
/ActorRnnNetwork/batch_unflatten/strided_slice_1?
+ActorRnnNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+ActorRnnNetwork/batch_unflatten/concat/axis?
&ActorRnnNetwork/batch_unflatten/concatConcatV26ActorRnnNetwork/batch_unflatten/strided_slice:output:08ActorRnnNetwork/batch_unflatten/strided_slice_1:output:04ActorRnnNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2(
&ActorRnnNetwork/batch_unflatten/concat?
'ActorRnnNetwork/batch_unflatten/ReshapeReshape4ActorRnnNetwork/input_mlp/dense/Relu_1:activations:0/ActorRnnNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?2)
'ActorRnnNetwork/batch_unflatten/Reshape?
"ActorRnnNetwork/reset_mask/Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"ActorRnnNetwork/reset_mask/Equal/y?
 ActorRnnNetwork/reset_mask/EqualEqual%ActorRnnNetwork/ExpandDims_1:output:0+ActorRnnNetwork/reset_mask/Equal/y:output:0*
T0*
_output_shapes

:2"
 ActorRnnNetwork/reset_mask/Equal?
#ActorRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#ActorRnnNetwork/dynamic_unroll/Rank?
*ActorRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/start?
*ActorRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/delta?
$ActorRnnNetwork/dynamic_unroll/rangeRange3ActorRnnNetwork/dynamic_unroll/range/start:output:0,ActorRnnNetwork/dynamic_unroll/Rank:output:03ActorRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2&
$ActorRnnNetwork/dynamic_unroll/range?
.ActorRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       20
.ActorRnnNetwork/dynamic_unroll/concat/values_0?
*ActorRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*ActorRnnNetwork/dynamic_unroll/concat/axis?
%ActorRnnNetwork/dynamic_unroll/concatConcatV27ActorRnnNetwork/dynamic_unroll/concat/values_0:output:0-ActorRnnNetwork/dynamic_unroll/range:output:03ActorRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%ActorRnnNetwork/dynamic_unroll/concat?
(ActorRnnNetwork/dynamic_unroll/transpose	Transpose0ActorRnnNetwork/batch_unflatten/Reshape:output:0.ActorRnnNetwork/dynamic_unroll/concat:output:0*
T0*#
_output_shapes
:?2*
(ActorRnnNetwork/dynamic_unroll/transpose?
/ActorRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       21
/ActorRnnNetwork/dynamic_unroll/transpose_1/perm?
*ActorRnnNetwork/dynamic_unroll/transpose_1	Transpose$ActorRnnNetwork/reset_mask/Equal:z:08ActorRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*
_output_shapes

:2,
*ActorRnnNetwork/dynamic_unroll/transpose_1?
$ActorRnnNetwork/dynamic_unroll/zerosConst*
_output_shapes
:	?*
dtype0*
valueB	?*    2&
$ActorRnnNetwork/dynamic_unroll/zeros?
&ActorRnnNetwork/dynamic_unroll/zeros_1Const*
_output_shapes
:	?*
dtype0*
valueB	?*    2(
&ActorRnnNetwork/dynamic_unroll/zeros_1?
&ActorRnnNetwork/dynamic_unroll/SqueezeSqueeze,ActorRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:	?*
squeeze_dims
 2(
&ActorRnnNetwork/dynamic_unroll/Squeeze?
(ActorRnnNetwork/dynamic_unroll/Squeeze_1Squeeze.ActorRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*
_output_shapes
:*
squeeze_dims
 2*
(ActorRnnNetwork/dynamic_unroll/Squeeze_1?
%ActorRnnNetwork/dynamic_unroll/SelectSelect1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0-ActorRnnNetwork/dynamic_unroll/zeros:output:0SelectV2:output:0*
T0*
_output_shapes
:	?2'
%ActorRnnNetwork/dynamic_unroll/Select?
'ActorRnnNetwork/dynamic_unroll/Select_1Select1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0/ActorRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_1:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/dynamic_unroll/Select_1?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpGactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02@
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMul/ActorRnnNetwork/dynamic_unroll/Squeeze:output:0FActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpIactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02B
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMul.ActorRnnNetwork/dynamic_unroll/Select:output:0HActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?23
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/addAddV29ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0;ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/add?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpHactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAdd0ActorRnnNetwork/dynamic_unroll/lstm_cell/add:z:0GActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/Const?
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/splitSplitAActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:09ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/split?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mulMul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:00ActorRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mul?
-ActorRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*
_output_shapes
:	?2/
-ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul4ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:01ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV20ActorRnnNetwork/dynamic_unroll/lstm_cell/mul:z:02ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1Tanh2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:03ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2?
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2/
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dim?
)ActorRnnNetwork/dynamic_unroll/ExpandDims
ExpandDims2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:06ActorRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2+
)ActorRnnNetwork/dynamic_unroll/ExpandDims?
%ActorRnnNetwork/batch_flatten_1/ShapeConst*
_output_shapes
:*
dtype0	*-
value$B"	"                     2'
%ActorRnnNetwork/batch_flatten_1/Shape?
-ActorRnnNetwork/batch_flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2/
-ActorRnnNetwork/batch_flatten_1/Reshape/shape?
'ActorRnnNetwork/batch_flatten_1/ReshapeReshape2ActorRnnNetwork/dynamic_unroll/ExpandDims:output:06ActorRnnNetwork/batch_flatten_1/Reshape/shape:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/batch_flatten_1/Reshape?
ActorRnnNetwork/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
ActorRnnNetwork/flatten_1/Const?
!ActorRnnNetwork/flatten_1/ReshapeReshape0ActorRnnNetwork/batch_flatten_1/Reshape:output:0(ActorRnnNetwork/flatten_1/Const:output:0*
T0*
_output_shapes
:	?2#
!ActorRnnNetwork/flatten_1/Reshape?
,ActorRnnNetwork/action/MatMul/ReadVariableOpReadVariableOp5actorrnnnetwork_action_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,ActorRnnNetwork/action/MatMul/ReadVariableOp?
ActorRnnNetwork/action/MatMulMatMul*ActorRnnNetwork/flatten_1/Reshape:output:04ActorRnnNetwork/action/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/MatMul?
-ActorRnnNetwork/action/BiasAdd/ReadVariableOpReadVariableOp6actorrnnnetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?
ActorRnnNetwork/action/BiasAddBiasAdd'ActorRnnNetwork/action/MatMul:product:05ActorRnnNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
ActorRnnNetwork/action/BiasAdd?
ActorRnnNetwork/action/TanhTanh'ActorRnnNetwork/action/BiasAdd:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/Tanh?
ActorRnnNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/Reshape/shape?
ActorRnnNetwork/ReshapeReshapeActorRnnNetwork/action/Tanh:y:0&ActorRnnNetwork/Reshape/shape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/Reshape?
ActorRnnNetwork/Cast/xConst*
_output_shapes
:*
dtype0*
valueB"??u=    2
ActorRnnNetwork/Cast/x?
ActorRnnNetwork/Cast_1/xConst*
_output_shapes
:*
dtype0*
valueB"
?#=  ??2
ActorRnnNetwork/Cast_1/x?
ActorRnnNetwork/mulMul!ActorRnnNetwork/Cast_1/x:output:0 ActorRnnNetwork/Reshape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/mul?
ActorRnnNetwork/addAddV2ActorRnnNetwork/Cast/x:output:0ActorRnnNetwork/mul:z:0*
T0*
_output_shapes

:2
ActorRnnNetwork/add?
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stack?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2?
/ActorRnnNetwork/batch_unflatten_1/strided_sliceStridedSlice.ActorRnnNetwork/batch_flatten_1/Shape:output:0>ActorRnnNetwork/batch_unflatten_1/strided_slice/stack:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask21
/ActorRnnNetwork/batch_unflatten_1/strided_slice?
'ActorRnnNetwork/batch_unflatten_1/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2)
'ActorRnnNetwork/batch_unflatten_1/Shape?
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2?
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1StridedSlice0ActorRnnNetwork/batch_unflatten_1/Shape:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask23
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1?
-ActorRnnNetwork/batch_unflatten_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-ActorRnnNetwork/batch_unflatten_1/concat/axis?
(ActorRnnNetwork/batch_unflatten_1/concatConcatV28ActorRnnNetwork/batch_unflatten_1/strided_slice:output:0:ActorRnnNetwork/batch_unflatten_1/strided_slice_1:output:06ActorRnnNetwork/batch_unflatten_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:2*
(ActorRnnNetwork/batch_unflatten_1/concat?
)ActorRnnNetwork/batch_unflatten_1/ReshapeReshapeActorRnnNetwork/add:z:01ActorRnnNetwork/batch_unflatten_1/concat:output:0*
T0*
Tshape0	*"
_output_shapes
:2+
)ActorRnnNetwork/batch_unflatten_1/Reshape?
ActorRnnNetwork/SqueezeSqueeze2ActorRnnNetwork/batch_unflatten_1/Reshape:output:0*
T0*
_output_shapes

:*
squeeze_dims
2
ActorRnnNetwork/Squeezem
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
(Deterministic_1/sample/BroadcastTo/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         2*
(Deterministic_1/sample/BroadcastTo/shape?
"Deterministic_1/sample/BroadcastToBroadcastTo ActorRnnNetwork/Squeeze:output:01Deterministic_1/sample/BroadcastTo/shape:output:0*
T0*"
_output_shapes
:2$
"Deterministic_1/sample/BroadcastTo?
$Deterministic_1/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$Deterministic_1/sample/Reshape/shape?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0-Deterministic_1/sample/Reshape/shape:output:0*
T0*
_output_shapes

:2 
Deterministic_1/sample/Reshape?
clip_by_value/Minimum/yConst*
_output_shapes
:*
dtype0*
valueB"???=  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:2
clip_by_value/Minimums
clip_by_value/yConst*
_output_shapes
:*
dtype0*
valueB"
ף<  ??2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:2
clip_by_value?
IdentityIdentityclip_by_value:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes

:2

Identity?

Identity_1Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*m
_input_shapes\
Z:::::	?:	?:::::::::2^
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp-ActorRnnNetwork/action/BiasAdd/ReadVariableOp2\
,ActorRnnNetwork/action/MatMul/ReadVariableOp,ActorRnnNetwork/action/MatMul/ReadVariableOp2?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2p
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2t
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2n
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp2r
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:O K

_output_shapes
:
-
_user_specified_nametime_step/step_type:LH

_output_shapes
:
*
_user_specified_nametime_step/reward:NJ

_output_shapes
:
,
_user_specified_nametime_step/discount:YU
"
_output_shapes
:
/
_user_specified_nametime_step/observation:OK

_output_shapes
:	?
(
_user_specified_namepolicy_state/0:OK

_output_shapes
:	?
(
_user_specified_namepolicy_state/1
?
(
&__inference_signature_wrapper_89334085?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_25520332
PartitionedCall*
_input_shapes 
??
?

#__inference_distribution_fn_2552512
	step_type

reward
discount
observation
unknown
	unknown_0B
>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resourceC
?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resourceD
@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resourceE
Aactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resourceK
Gactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceM
Iactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourceL
Hactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource9
5actorrnnnetwork_action_matmul_readvariableop_resource:
6actorrnnnetwork_action_biasadd_readvariableop_resource
identity

identity_1

identity_2??-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?,ActorRnnNetwork/action/MatMul/ReadVariableOp??ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpX
ConstConst*
_output_shapes
:*
dtype0*
valueB:2
Constm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Const:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constg
zerosFillconcat:output:0zeros/Const:output:0*
T0*
_output_shapes
:	?2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Const:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Consto
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	?2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yY
EqualEqual	step_typeEqual/y:output:0*
T0*
_output_shapes
:2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subX
ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
Shape{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2Shape:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2d
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*
_output_shapes

:2	
Reshapeu
SelectV2SelectV2Reshape:output:0zeros:output:0unknown*
T0*
_output_shapes
:	?2

SelectV2}

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0	unknown_0*
T0*
_output_shapes
:	?2

SelectV2_1?
ActorRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ActorRnnNetwork/ExpandDims/dim?
ActorRnnNetwork/ExpandDims
ExpandDimsobservation'ActorRnnNetwork/ExpandDims/dim:output:0*
T0*&
_output_shapes
:2
ActorRnnNetwork/ExpandDims?
 ActorRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 ActorRnnNetwork/ExpandDims_1/dim?
ActorRnnNetwork/ExpandDims_1
ExpandDims	step_type)ActorRnnNetwork/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/ExpandDims_1?
#ActorRnnNetwork/batch_flatten/ShapeConst*
_output_shapes
:*
dtype0	*5
value,B*	"                             2%
#ActorRnnNetwork/batch_flatten/Shape?
+ActorRnnNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2-
+ActorRnnNetwork/batch_flatten/Reshape/shape?
%ActorRnnNetwork/batch_flatten/ReshapeReshape#ActorRnnNetwork/ExpandDims:output:04ActorRnnNetwork/batch_flatten/Reshape/shape:output:0*
T0*"
_output_shapes
:2'
%ActorRnnNetwork/batch_flatten/Reshape?
ActorRnnNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/flatten/Const?
ActorRnnNetwork/flatten/ReshapeReshape.ActorRnnNetwork/batch_flatten/Reshape:output:0&ActorRnnNetwork/flatten/Const:output:0*
T0*
_output_shapes

:2!
ActorRnnNetwork/flatten/Reshape?
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?
&ActorRnnNetwork/input_mlp/dense/MatMulMatMul(ActorRnnNetwork/flatten/Reshape:output:0=ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/MatMul?
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?
'ActorRnnNetwork/input_mlp/dense/BiasAddBiasAdd0ActorRnnNetwork/input_mlp/dense/MatMul:product:0>ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/input_mlp/dense/BiasAdd?
$ActorRnnNetwork/input_mlp/dense/ReluRelu0ActorRnnNetwork/input_mlp/dense/BiasAdd:output:0*
T0*
_output_shapes
:	?2&
$ActorRnnNetwork/input_mlp/dense/Relu?
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp?
(ActorRnnNetwork/input_mlp/dense/MatMul_1MatMul2ActorRnnNetwork/input_mlp/dense/Relu:activations:0?ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(ActorRnnNetwork/input_mlp/dense/MatMul_1?
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOpAactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1BiasAdd2ActorRnnNetwork/input_mlp/dense/MatMul_1:product:0@ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2+
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1?
&ActorRnnNetwork/input_mlp/dense/Relu_1Relu2ActorRnnNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/Relu_1?
3ActorRnnNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3ActorRnnNetwork/batch_unflatten/strided_slice/stack?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2?
-ActorRnnNetwork/batch_unflatten/strided_sliceStridedSlice,ActorRnnNetwork/batch_flatten/Shape:output:0<ActorRnnNetwork/batch_unflatten/strided_slice/stack:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_1:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2/
-ActorRnnNetwork/batch_unflatten/strided_slice?
%ActorRnnNetwork/batch_unflatten/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2'
%ActorRnnNetwork/batch_unflatten/Shape?
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stack?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2?
/ActorRnnNetwork/batch_unflatten/strided_slice_1StridedSlice.ActorRnnNetwork/batch_unflatten/Shape:output:0>ActorRnnNetwork/batch_unflatten/strided_slice_1/stack:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask21
/ActorRnnNetwork/batch_unflatten/strided_slice_1?
+ActorRnnNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+ActorRnnNetwork/batch_unflatten/concat/axis?
&ActorRnnNetwork/batch_unflatten/concatConcatV26ActorRnnNetwork/batch_unflatten/strided_slice:output:08ActorRnnNetwork/batch_unflatten/strided_slice_1:output:04ActorRnnNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2(
&ActorRnnNetwork/batch_unflatten/concat?
'ActorRnnNetwork/batch_unflatten/ReshapeReshape4ActorRnnNetwork/input_mlp/dense/Relu_1:activations:0/ActorRnnNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?2)
'ActorRnnNetwork/batch_unflatten/Reshape?
"ActorRnnNetwork/reset_mask/Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"ActorRnnNetwork/reset_mask/Equal/y?
 ActorRnnNetwork/reset_mask/EqualEqual%ActorRnnNetwork/ExpandDims_1:output:0+ActorRnnNetwork/reset_mask/Equal/y:output:0*
T0*
_output_shapes

:2"
 ActorRnnNetwork/reset_mask/Equal?
#ActorRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#ActorRnnNetwork/dynamic_unroll/Rank?
*ActorRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/start?
*ActorRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/delta?
$ActorRnnNetwork/dynamic_unroll/rangeRange3ActorRnnNetwork/dynamic_unroll/range/start:output:0,ActorRnnNetwork/dynamic_unroll/Rank:output:03ActorRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2&
$ActorRnnNetwork/dynamic_unroll/range?
.ActorRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       20
.ActorRnnNetwork/dynamic_unroll/concat/values_0?
*ActorRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*ActorRnnNetwork/dynamic_unroll/concat/axis?
%ActorRnnNetwork/dynamic_unroll/concatConcatV27ActorRnnNetwork/dynamic_unroll/concat/values_0:output:0-ActorRnnNetwork/dynamic_unroll/range:output:03ActorRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%ActorRnnNetwork/dynamic_unroll/concat?
(ActorRnnNetwork/dynamic_unroll/transpose	Transpose0ActorRnnNetwork/batch_unflatten/Reshape:output:0.ActorRnnNetwork/dynamic_unroll/concat:output:0*
T0*#
_output_shapes
:?2*
(ActorRnnNetwork/dynamic_unroll/transpose?
/ActorRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       21
/ActorRnnNetwork/dynamic_unroll/transpose_1/perm?
*ActorRnnNetwork/dynamic_unroll/transpose_1	Transpose$ActorRnnNetwork/reset_mask/Equal:z:08ActorRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*
_output_shapes

:2,
*ActorRnnNetwork/dynamic_unroll/transpose_1?
$ActorRnnNetwork/dynamic_unroll/zerosConst*
_output_shapes
:	?*
dtype0*
valueB	?*    2&
$ActorRnnNetwork/dynamic_unroll/zeros?
&ActorRnnNetwork/dynamic_unroll/zeros_1Const*
_output_shapes
:	?*
dtype0*
valueB	?*    2(
&ActorRnnNetwork/dynamic_unroll/zeros_1?
&ActorRnnNetwork/dynamic_unroll/SqueezeSqueeze,ActorRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:	?*
squeeze_dims
 2(
&ActorRnnNetwork/dynamic_unroll/Squeeze?
(ActorRnnNetwork/dynamic_unroll/Squeeze_1Squeeze.ActorRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*
_output_shapes
:*
squeeze_dims
 2*
(ActorRnnNetwork/dynamic_unroll/Squeeze_1?
%ActorRnnNetwork/dynamic_unroll/SelectSelect1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0-ActorRnnNetwork/dynamic_unroll/zeros:output:0SelectV2:output:0*
T0*
_output_shapes
:	?2'
%ActorRnnNetwork/dynamic_unroll/Select?
'ActorRnnNetwork/dynamic_unroll/Select_1Select1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0/ActorRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_1:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/dynamic_unroll/Select_1?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpGactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02@
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMul/ActorRnnNetwork/dynamic_unroll/Squeeze:output:0FActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpIactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02B
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMul.ActorRnnNetwork/dynamic_unroll/Select:output:0HActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?23
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/addAddV29ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0;ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/add?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpHactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAdd0ActorRnnNetwork/dynamic_unroll/lstm_cell/add:z:0GActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/Const?
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/splitSplitAActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:09ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/split?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mulMul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:00ActorRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mul?
-ActorRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*
_output_shapes
:	?2/
-ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul4ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:01ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV20ActorRnnNetwork/dynamic_unroll/lstm_cell/mul:z:02ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1Tanh2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:03ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2?
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2/
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dim?
)ActorRnnNetwork/dynamic_unroll/ExpandDims
ExpandDims2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:06ActorRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2+
)ActorRnnNetwork/dynamic_unroll/ExpandDims?
%ActorRnnNetwork/batch_flatten_1/ShapeConst*
_output_shapes
:*
dtype0	*-
value$B"	"                     2'
%ActorRnnNetwork/batch_flatten_1/Shape?
-ActorRnnNetwork/batch_flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2/
-ActorRnnNetwork/batch_flatten_1/Reshape/shape?
'ActorRnnNetwork/batch_flatten_1/ReshapeReshape2ActorRnnNetwork/dynamic_unroll/ExpandDims:output:06ActorRnnNetwork/batch_flatten_1/Reshape/shape:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/batch_flatten_1/Reshape?
ActorRnnNetwork/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
ActorRnnNetwork/flatten_1/Const?
!ActorRnnNetwork/flatten_1/ReshapeReshape0ActorRnnNetwork/batch_flatten_1/Reshape:output:0(ActorRnnNetwork/flatten_1/Const:output:0*
T0*
_output_shapes
:	?2#
!ActorRnnNetwork/flatten_1/Reshape?
,ActorRnnNetwork/action/MatMul/ReadVariableOpReadVariableOp5actorrnnnetwork_action_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,ActorRnnNetwork/action/MatMul/ReadVariableOp?
ActorRnnNetwork/action/MatMulMatMul*ActorRnnNetwork/flatten_1/Reshape:output:04ActorRnnNetwork/action/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/MatMul?
-ActorRnnNetwork/action/BiasAdd/ReadVariableOpReadVariableOp6actorrnnnetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?
ActorRnnNetwork/action/BiasAddBiasAdd'ActorRnnNetwork/action/MatMul:product:05ActorRnnNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
ActorRnnNetwork/action/BiasAdd?
ActorRnnNetwork/action/TanhTanh'ActorRnnNetwork/action/BiasAdd:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/Tanh?
ActorRnnNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/Reshape/shape?
ActorRnnNetwork/ReshapeReshapeActorRnnNetwork/action/Tanh:y:0&ActorRnnNetwork/Reshape/shape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/Reshape?
ActorRnnNetwork/Cast/xConst*
_output_shapes
:*
dtype0*
valueB"??u=    2
ActorRnnNetwork/Cast/x?
ActorRnnNetwork/Cast_1/xConst*
_output_shapes
:*
dtype0*
valueB"
?#=  ??2
ActorRnnNetwork/Cast_1/x?
ActorRnnNetwork/mulMul!ActorRnnNetwork/Cast_1/x:output:0 ActorRnnNetwork/Reshape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/mul?
ActorRnnNetwork/addAddV2ActorRnnNetwork/Cast/x:output:0ActorRnnNetwork/mul:z:0*
T0*
_output_shapes

:2
ActorRnnNetwork/add?
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stack?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2?
/ActorRnnNetwork/batch_unflatten_1/strided_sliceStridedSlice.ActorRnnNetwork/batch_flatten_1/Shape:output:0>ActorRnnNetwork/batch_unflatten_1/strided_slice/stack:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask21
/ActorRnnNetwork/batch_unflatten_1/strided_slice?
'ActorRnnNetwork/batch_unflatten_1/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2)
'ActorRnnNetwork/batch_unflatten_1/Shape?
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2?
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1StridedSlice0ActorRnnNetwork/batch_unflatten_1/Shape:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask23
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1?
-ActorRnnNetwork/batch_unflatten_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-ActorRnnNetwork/batch_unflatten_1/concat/axis?
(ActorRnnNetwork/batch_unflatten_1/concatConcatV28ActorRnnNetwork/batch_unflatten_1/strided_slice:output:0:ActorRnnNetwork/batch_unflatten_1/strided_slice_1:output:06ActorRnnNetwork/batch_unflatten_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:2*
(ActorRnnNetwork/batch_unflatten_1/concat?
)ActorRnnNetwork/batch_unflatten_1/ReshapeReshapeActorRnnNetwork/add:z:01ActorRnnNetwork/batch_unflatten_1/concat:output:0*
T0*
Tshape0	*"
_output_shapes
:2+
)ActorRnnNetwork/batch_unflatten_1/Reshape?
ActorRnnNetwork/SqueezeSqueeze2ActorRnnNetwork/batch_unflatten_1/Reshape:output:0*
T0*
_output_shapes

:*
squeeze_dims
2
ActorRnnNetwork/Squeezem
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtolq
Deterministic_1/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_1/atolq
Deterministic_1/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_1/rtol?
IdentityIdentity ActorRnnNetwork/Squeeze:output:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes

:2

Identity?

Identity_1Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_2q
Deterministic_2/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_2/atolq
Deterministic_2/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_2/rtol"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*m
_input_shapes\
Z:::::	?:	?:::::::::2^
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp-ActorRnnNetwork/action/BiasAdd/ReadVariableOp2\
,ActorRnnNetwork/action/MatMul/ReadVariableOp,ActorRnnNetwork/action/MatMul/ReadVariableOp2?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2p
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2t
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2n
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp2r
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:E A

_output_shapes
:
#
_user_specified_name	step_type:B>

_output_shapes
:
 
_user_specified_namereward:D@

_output_shapes
:
"
_user_specified_name
discount:OK
"
_output_shapes
:
%
_user_specified_nameobservation:B>

_output_shapes
:	?

_user_specified_name0:B>

_output_shapes
:	?

_user_specified_name1
?
F
&__inference_signature_wrapper_89334073
identity

identity_1?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_25520072
PartitionedCalld
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	?2

Identityh

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:	?2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes 
?
K
+__inference_function_with_signature_2552007
identity

identity_1?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_function_25520022
PartitionedCalld
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	?2

Identityh

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:	?2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes 
?/
?
$__inference__traced_restore_89334188
file_prefix 
assignvariableop_global_step4
0assignvariableop_1_actorrnnnetwork_action_kernel2
.assignvariableop_2_actorrnnnetwork_action_bias<
8assignvariableop_3_actorrnnnetwork_dynamic_unroll_kernelF
Bassignvariableop_4_actorrnnnetwork_dynamic_unroll_recurrent_kernel:
6assignvariableop_5_actorrnnnetwork_dynamic_unroll_bias=
9assignvariableop_6_actorrnnnetwork_input_mlp_dense_kernel;
7assignvariableop_7_actorrnnnetwork_input_mlp_dense_bias?
;assignvariableop_8_actorrnnnetwork_input_mlp_dense_kernel_1=
9assignvariableop_9_actorrnnnetwork_input_mlp_dense_bias_1
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_global_stepIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp0assignvariableop_1_actorrnnnetwork_action_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_actorrnnnetwork_action_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp8assignvariableop_3_actorrnnnetwork_dynamic_unroll_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpBassignvariableop_4_actorrnnnetwork_dynamic_unroll_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp6assignvariableop_5_actorrnnnetwork_dynamic_unroll_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp9assignvariableop_6_actorrnnnetwork_input_mlp_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp7assignvariableop_7_actorrnnnetwork_input_mlp_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp;assignvariableop_8_actorrnnnetwork_input_mlp_dense_kernel_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp9assignvariableop_9_actorrnnnetwork_input_mlp_dense_bias_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*=
_input_shapes,
*: ::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
-
+__inference_function_with_signature_2552033?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_705202
PartitionedCall*
_input_shapes 
?
?
&__inference_signature_wrapper_89334065
discount
observation

reward
	step_type
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 ::	?:	?*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_25519512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*m
_input_shapes\
Z:::::	?:	?:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes
:
$
_user_specified_name
0/discount:QM
"
_output_shapes
:
'
_user_specified_name0/observation:D@

_output_shapes
:
"
_user_specified_name
0/reward:GC

_output_shapes
:
%
_user_specified_name0/step_type:D@

_output_shapes
:	?

_user_specified_name1/0:D@

_output_shapes
:	?

_user_specified_name1/1
?
?
+__inference_function_with_signature_2551951
	step_type

reward
discount
observation
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 ::	?:	?*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_action_25519262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*m
_input_shapes\
Z:::::	?:	?:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:
%
_user_specified_name0/step_type:D@

_output_shapes
:
"
_user_specified_name
0/reward:FB

_output_shapes
:
$
_user_specified_name
0/discount:QM
"
_output_shapes
:
'
_user_specified_name0/observation:D@

_output_shapes
:	?

_user_specified_name1/0:D@

_output_shapes
:	?

_user_specified_name1/1
?
[
__inference_<lambda>_70517
readvariableop_resource
identity	??ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2 
ReadVariableOpReadVariableOp
??
?

__inference_action_2552358
	step_type

reward
discount
observation
unknown
	unknown_0B
>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resourceC
?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resourceD
@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resourceE
Aactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resourceK
Gactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceM
Iactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourceL
Hactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource9
5actorrnnnetwork_action_matmul_readvariableop_resource:
6actorrnnnetwork_action_biasadd_readvariableop_resource
identity

identity_1

identity_2??-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?,ActorRnnNetwork/action/MatMul/ReadVariableOp??ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpX
ConstConst*
_output_shapes
:*
dtype0*
valueB:2
Constm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Const:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constg
zerosFillconcat:output:0zeros/Const:output:0*
T0*
_output_shapes
:	?2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Const:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Consto
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	?2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yY
EqualEqual	step_typeEqual/y:output:0*
T0*
_output_shapes
:2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subX
ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
Shape{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2Shape:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2d
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*
_output_shapes

:2	
Reshapeu
SelectV2SelectV2Reshape:output:0zeros:output:0unknown*
T0*
_output_shapes
:	?2

SelectV2}

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0	unknown_0*
T0*
_output_shapes
:	?2

SelectV2_1?
ActorRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ActorRnnNetwork/ExpandDims/dim?
ActorRnnNetwork/ExpandDims
ExpandDimsobservation'ActorRnnNetwork/ExpandDims/dim:output:0*
T0*&
_output_shapes
:2
ActorRnnNetwork/ExpandDims?
 ActorRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 ActorRnnNetwork/ExpandDims_1/dim?
ActorRnnNetwork/ExpandDims_1
ExpandDims	step_type)ActorRnnNetwork/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/ExpandDims_1?
#ActorRnnNetwork/batch_flatten/ShapeConst*
_output_shapes
:*
dtype0	*5
value,B*	"                             2%
#ActorRnnNetwork/batch_flatten/Shape?
+ActorRnnNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2-
+ActorRnnNetwork/batch_flatten/Reshape/shape?
%ActorRnnNetwork/batch_flatten/ReshapeReshape#ActorRnnNetwork/ExpandDims:output:04ActorRnnNetwork/batch_flatten/Reshape/shape:output:0*
T0*"
_output_shapes
:2'
%ActorRnnNetwork/batch_flatten/Reshape?
ActorRnnNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/flatten/Const?
ActorRnnNetwork/flatten/ReshapeReshape.ActorRnnNetwork/batch_flatten/Reshape:output:0&ActorRnnNetwork/flatten/Const:output:0*
T0*
_output_shapes

:2!
ActorRnnNetwork/flatten/Reshape?
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?
&ActorRnnNetwork/input_mlp/dense/MatMulMatMul(ActorRnnNetwork/flatten/Reshape:output:0=ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/MatMul?
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?
'ActorRnnNetwork/input_mlp/dense/BiasAddBiasAdd0ActorRnnNetwork/input_mlp/dense/MatMul:product:0>ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/input_mlp/dense/BiasAdd?
$ActorRnnNetwork/input_mlp/dense/ReluRelu0ActorRnnNetwork/input_mlp/dense/BiasAdd:output:0*
T0*
_output_shapes
:	?2&
$ActorRnnNetwork/input_mlp/dense/Relu?
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp?
(ActorRnnNetwork/input_mlp/dense/MatMul_1MatMul2ActorRnnNetwork/input_mlp/dense/Relu:activations:0?ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(ActorRnnNetwork/input_mlp/dense/MatMul_1?
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOpAactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1BiasAdd2ActorRnnNetwork/input_mlp/dense/MatMul_1:product:0@ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2+
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1?
&ActorRnnNetwork/input_mlp/dense/Relu_1Relu2ActorRnnNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/Relu_1?
3ActorRnnNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3ActorRnnNetwork/batch_unflatten/strided_slice/stack?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2?
-ActorRnnNetwork/batch_unflatten/strided_sliceStridedSlice,ActorRnnNetwork/batch_flatten/Shape:output:0<ActorRnnNetwork/batch_unflatten/strided_slice/stack:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_1:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2/
-ActorRnnNetwork/batch_unflatten/strided_slice?
%ActorRnnNetwork/batch_unflatten/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2'
%ActorRnnNetwork/batch_unflatten/Shape?
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stack?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2?
/ActorRnnNetwork/batch_unflatten/strided_slice_1StridedSlice.ActorRnnNetwork/batch_unflatten/Shape:output:0>ActorRnnNetwork/batch_unflatten/strided_slice_1/stack:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask21
/ActorRnnNetwork/batch_unflatten/strided_slice_1?
+ActorRnnNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+ActorRnnNetwork/batch_unflatten/concat/axis?
&ActorRnnNetwork/batch_unflatten/concatConcatV26ActorRnnNetwork/batch_unflatten/strided_slice:output:08ActorRnnNetwork/batch_unflatten/strided_slice_1:output:04ActorRnnNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2(
&ActorRnnNetwork/batch_unflatten/concat?
'ActorRnnNetwork/batch_unflatten/ReshapeReshape4ActorRnnNetwork/input_mlp/dense/Relu_1:activations:0/ActorRnnNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?2)
'ActorRnnNetwork/batch_unflatten/Reshape?
"ActorRnnNetwork/reset_mask/Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"ActorRnnNetwork/reset_mask/Equal/y?
 ActorRnnNetwork/reset_mask/EqualEqual%ActorRnnNetwork/ExpandDims_1:output:0+ActorRnnNetwork/reset_mask/Equal/y:output:0*
T0*
_output_shapes

:2"
 ActorRnnNetwork/reset_mask/Equal?
#ActorRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#ActorRnnNetwork/dynamic_unroll/Rank?
*ActorRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/start?
*ActorRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/delta?
$ActorRnnNetwork/dynamic_unroll/rangeRange3ActorRnnNetwork/dynamic_unroll/range/start:output:0,ActorRnnNetwork/dynamic_unroll/Rank:output:03ActorRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2&
$ActorRnnNetwork/dynamic_unroll/range?
.ActorRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       20
.ActorRnnNetwork/dynamic_unroll/concat/values_0?
*ActorRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*ActorRnnNetwork/dynamic_unroll/concat/axis?
%ActorRnnNetwork/dynamic_unroll/concatConcatV27ActorRnnNetwork/dynamic_unroll/concat/values_0:output:0-ActorRnnNetwork/dynamic_unroll/range:output:03ActorRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%ActorRnnNetwork/dynamic_unroll/concat?
(ActorRnnNetwork/dynamic_unroll/transpose	Transpose0ActorRnnNetwork/batch_unflatten/Reshape:output:0.ActorRnnNetwork/dynamic_unroll/concat:output:0*
T0*#
_output_shapes
:?2*
(ActorRnnNetwork/dynamic_unroll/transpose?
/ActorRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       21
/ActorRnnNetwork/dynamic_unroll/transpose_1/perm?
*ActorRnnNetwork/dynamic_unroll/transpose_1	Transpose$ActorRnnNetwork/reset_mask/Equal:z:08ActorRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*
_output_shapes

:2,
*ActorRnnNetwork/dynamic_unroll/transpose_1?
$ActorRnnNetwork/dynamic_unroll/zerosConst*
_output_shapes
:	?*
dtype0*
valueB	?*    2&
$ActorRnnNetwork/dynamic_unroll/zeros?
&ActorRnnNetwork/dynamic_unroll/zeros_1Const*
_output_shapes
:	?*
dtype0*
valueB	?*    2(
&ActorRnnNetwork/dynamic_unroll/zeros_1?
&ActorRnnNetwork/dynamic_unroll/SqueezeSqueeze,ActorRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:	?*
squeeze_dims
 2(
&ActorRnnNetwork/dynamic_unroll/Squeeze?
(ActorRnnNetwork/dynamic_unroll/Squeeze_1Squeeze.ActorRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*
_output_shapes
:*
squeeze_dims
 2*
(ActorRnnNetwork/dynamic_unroll/Squeeze_1?
%ActorRnnNetwork/dynamic_unroll/SelectSelect1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0-ActorRnnNetwork/dynamic_unroll/zeros:output:0SelectV2:output:0*
T0*
_output_shapes
:	?2'
%ActorRnnNetwork/dynamic_unroll/Select?
'ActorRnnNetwork/dynamic_unroll/Select_1Select1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0/ActorRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_1:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/dynamic_unroll/Select_1?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpGactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02@
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMul/ActorRnnNetwork/dynamic_unroll/Squeeze:output:0FActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpIactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02B
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMul.ActorRnnNetwork/dynamic_unroll/Select:output:0HActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?23
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/addAddV29ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0;ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/add?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpHactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAdd0ActorRnnNetwork/dynamic_unroll/lstm_cell/add:z:0GActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/Const?
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/splitSplitAActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:09ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/split?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mulMul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:00ActorRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mul?
-ActorRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*
_output_shapes
:	?2/
-ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul4ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:01ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV20ActorRnnNetwork/dynamic_unroll/lstm_cell/mul:z:02ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1Tanh2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:03ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2?
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2/
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dim?
)ActorRnnNetwork/dynamic_unroll/ExpandDims
ExpandDims2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:06ActorRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2+
)ActorRnnNetwork/dynamic_unroll/ExpandDims?
%ActorRnnNetwork/batch_flatten_1/ShapeConst*
_output_shapes
:*
dtype0	*-
value$B"	"                     2'
%ActorRnnNetwork/batch_flatten_1/Shape?
-ActorRnnNetwork/batch_flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2/
-ActorRnnNetwork/batch_flatten_1/Reshape/shape?
'ActorRnnNetwork/batch_flatten_1/ReshapeReshape2ActorRnnNetwork/dynamic_unroll/ExpandDims:output:06ActorRnnNetwork/batch_flatten_1/Reshape/shape:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/batch_flatten_1/Reshape?
ActorRnnNetwork/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
ActorRnnNetwork/flatten_1/Const?
!ActorRnnNetwork/flatten_1/ReshapeReshape0ActorRnnNetwork/batch_flatten_1/Reshape:output:0(ActorRnnNetwork/flatten_1/Const:output:0*
T0*
_output_shapes
:	?2#
!ActorRnnNetwork/flatten_1/Reshape?
,ActorRnnNetwork/action/MatMul/ReadVariableOpReadVariableOp5actorrnnnetwork_action_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,ActorRnnNetwork/action/MatMul/ReadVariableOp?
ActorRnnNetwork/action/MatMulMatMul*ActorRnnNetwork/flatten_1/Reshape:output:04ActorRnnNetwork/action/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/MatMul?
-ActorRnnNetwork/action/BiasAdd/ReadVariableOpReadVariableOp6actorrnnnetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?
ActorRnnNetwork/action/BiasAddBiasAdd'ActorRnnNetwork/action/MatMul:product:05ActorRnnNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
ActorRnnNetwork/action/BiasAdd?
ActorRnnNetwork/action/TanhTanh'ActorRnnNetwork/action/BiasAdd:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/Tanh?
ActorRnnNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/Reshape/shape?
ActorRnnNetwork/ReshapeReshapeActorRnnNetwork/action/Tanh:y:0&ActorRnnNetwork/Reshape/shape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/Reshape?
ActorRnnNetwork/Cast/xConst*
_output_shapes
:*
dtype0*
valueB"??u=    2
ActorRnnNetwork/Cast/x?
ActorRnnNetwork/Cast_1/xConst*
_output_shapes
:*
dtype0*
valueB"
?#=  ??2
ActorRnnNetwork/Cast_1/x?
ActorRnnNetwork/mulMul!ActorRnnNetwork/Cast_1/x:output:0 ActorRnnNetwork/Reshape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/mul?
ActorRnnNetwork/addAddV2ActorRnnNetwork/Cast/x:output:0ActorRnnNetwork/mul:z:0*
T0*
_output_shapes

:2
ActorRnnNetwork/add?
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stack?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2?
/ActorRnnNetwork/batch_unflatten_1/strided_sliceStridedSlice.ActorRnnNetwork/batch_flatten_1/Shape:output:0>ActorRnnNetwork/batch_unflatten_1/strided_slice/stack:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask21
/ActorRnnNetwork/batch_unflatten_1/strided_slice?
'ActorRnnNetwork/batch_unflatten_1/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2)
'ActorRnnNetwork/batch_unflatten_1/Shape?
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2?
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1StridedSlice0ActorRnnNetwork/batch_unflatten_1/Shape:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask23
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1?
-ActorRnnNetwork/batch_unflatten_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-ActorRnnNetwork/batch_unflatten_1/concat/axis?
(ActorRnnNetwork/batch_unflatten_1/concatConcatV28ActorRnnNetwork/batch_unflatten_1/strided_slice:output:0:ActorRnnNetwork/batch_unflatten_1/strided_slice_1:output:06ActorRnnNetwork/batch_unflatten_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:2*
(ActorRnnNetwork/batch_unflatten_1/concat?
)ActorRnnNetwork/batch_unflatten_1/ReshapeReshapeActorRnnNetwork/add:z:01ActorRnnNetwork/batch_unflatten_1/concat:output:0*
T0*
Tshape0	*"
_output_shapes
:2+
)ActorRnnNetwork/batch_unflatten_1/Reshape?
ActorRnnNetwork/SqueezeSqueeze2ActorRnnNetwork/batch_unflatten_1/Reshape:output:0*
T0*
_output_shapes

:*
squeeze_dims
2
ActorRnnNetwork/Squeezem
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
(Deterministic_1/sample/BroadcastTo/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         2*
(Deterministic_1/sample/BroadcastTo/shape?
"Deterministic_1/sample/BroadcastToBroadcastTo ActorRnnNetwork/Squeeze:output:01Deterministic_1/sample/BroadcastTo/shape:output:0*
T0*"
_output_shapes
:2$
"Deterministic_1/sample/BroadcastTo?
$Deterministic_1/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$Deterministic_1/sample/Reshape/shape?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0-Deterministic_1/sample/Reshape/shape:output:0*
T0*
_output_shapes

:2 
Deterministic_1/sample/Reshape?
clip_by_value/Minimum/yConst*
_output_shapes
:*
dtype0*
valueB"???=  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:2
clip_by_value/Minimums
clip_by_value/yConst*
_output_shapes
:*
dtype0*
valueB"
ף<  ??2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:2
clip_by_value?
IdentityIdentityclip_by_value:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes

:2

Identity?

Identity_1Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*m
_input_shapes\
Z:::::	?:	?:::::::::2^
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp-ActorRnnNetwork/action/BiasAdd/ReadVariableOp2\
,ActorRnnNetwork/action/MatMul/ReadVariableOp,ActorRnnNetwork/action/MatMul/ReadVariableOp2?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2p
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2t
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2n
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp2r
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:E A

_output_shapes
:
#
_user_specified_name	step_type:B>

_output_shapes
:
 
_user_specified_namereward:D@

_output_shapes
:
"
_user_specified_name
discount:OK
"
_output_shapes
:
%
_user_specified_nameobservation:B>

_output_shapes
:	?

_user_specified_name0:B>

_output_shapes
:	?

_user_specified_name1
?
e
+__inference_function_with_signature_2552022
unknown
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_705172
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
??
?

__inference_action_2551926
	time_step
time_step_1
time_step_2
time_step_3
policy_state
policy_state_1B
>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resourceC
?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resourceD
@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resourceE
Aactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resourceK
Gactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resourceM
Iactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resourceL
Hactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource9
5actorrnnnetwork_action_matmul_readvariableop_resource:
6actorrnnnetwork_action_biasadd_readvariableop_resource
identity

identity_1

identity_2??-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?,ActorRnnNetwork/action/MatMul/ReadVariableOp??ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpX
ConstConst*
_output_shapes
:*
dtype0*
valueB:2
Constm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Const:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constg
zerosFillconcat:output:0zeros/Const:output:0*
T0*
_output_shapes
:	?2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Const:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Consto
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	?2	
zeros_1T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yY
EqualEqual	time_stepEqual/y:output:0*
T0*
_output_shapes
:2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subX
ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
Shape{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2Shape:output:0ones:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2d
ReshapeReshape	Equal:z:0concat_2:output:0*
T0
*
_output_shapes

:2	
Reshapez
SelectV2SelectV2Reshape:output:0zeros:output:0policy_state*
T0*
_output_shapes
:	?2

SelectV2?

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0policy_state_1*
T0*
_output_shapes
:	?2

SelectV2_1?
ActorRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ActorRnnNetwork/ExpandDims/dim?
ActorRnnNetwork/ExpandDims
ExpandDimstime_step_3'ActorRnnNetwork/ExpandDims/dim:output:0*
T0*&
_output_shapes
:2
ActorRnnNetwork/ExpandDims?
 ActorRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 ActorRnnNetwork/ExpandDims_1/dim?
ActorRnnNetwork/ExpandDims_1
ExpandDims	time_step)ActorRnnNetwork/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/ExpandDims_1?
#ActorRnnNetwork/batch_flatten/ShapeConst*
_output_shapes
:*
dtype0	*5
value,B*	"                             2%
#ActorRnnNetwork/batch_flatten/Shape?
+ActorRnnNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2-
+ActorRnnNetwork/batch_flatten/Reshape/shape?
%ActorRnnNetwork/batch_flatten/ReshapeReshape#ActorRnnNetwork/ExpandDims:output:04ActorRnnNetwork/batch_flatten/Reshape/shape:output:0*
T0*"
_output_shapes
:2'
%ActorRnnNetwork/batch_flatten/Reshape?
ActorRnnNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/flatten/Const?
ActorRnnNetwork/flatten/ReshapeReshape.ActorRnnNetwork/batch_flatten/Reshape:output:0&ActorRnnNetwork/flatten/Const:output:0*
T0*
_output_shapes

:2!
ActorRnnNetwork/flatten/Reshape?
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp>actorrnnnetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp?
&ActorRnnNetwork/input_mlp/dense/MatMulMatMul(ActorRnnNetwork/flatten/Reshape:output:0=ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/MatMul?
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp?actorrnnnetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp?
'ActorRnnNetwork/input_mlp/dense/BiasAddBiasAdd0ActorRnnNetwork/input_mlp/dense/MatMul:product:0>ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/input_mlp/dense/BiasAdd?
$ActorRnnNetwork/input_mlp/dense/ReluRelu0ActorRnnNetwork/input_mlp/dense/BiasAdd:output:0*
T0*
_output_shapes
:	?2&
$ActorRnnNetwork/input_mlp/dense/Relu?
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp@actorrnnnetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp?
(ActorRnnNetwork/input_mlp/dense/MatMul_1MatMul2ActorRnnNetwork/input_mlp/dense/Relu:activations:0?ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(ActorRnnNetwork/input_mlp/dense/MatMul_1?
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOpAactorrnnnetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp?
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1BiasAdd2ActorRnnNetwork/input_mlp/dense/MatMul_1:product:0@ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2+
)ActorRnnNetwork/input_mlp/dense/BiasAdd_1?
&ActorRnnNetwork/input_mlp/dense/Relu_1Relu2ActorRnnNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*
_output_shapes
:	?2(
&ActorRnnNetwork/input_mlp/dense/Relu_1?
3ActorRnnNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3ActorRnnNetwork/batch_unflatten/strided_slice/stack?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_1?
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice/stack_2?
-ActorRnnNetwork/batch_unflatten/strided_sliceStridedSlice,ActorRnnNetwork/batch_flatten/Shape:output:0<ActorRnnNetwork/batch_unflatten/strided_slice/stack:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_1:output:0>ActorRnnNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2/
-ActorRnnNetwork/batch_unflatten/strided_slice?
%ActorRnnNetwork/batch_unflatten/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2'
%ActorRnnNetwork/batch_unflatten/Shape?
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5ActorRnnNetwork/batch_unflatten/strided_slice_1/stack?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1?
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2?
/ActorRnnNetwork/batch_unflatten/strided_slice_1StridedSlice.ActorRnnNetwork/batch_unflatten/Shape:output:0>ActorRnnNetwork/batch_unflatten/strided_slice_1/stack:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_1:output:0@ActorRnnNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask21
/ActorRnnNetwork/batch_unflatten/strided_slice_1?
+ActorRnnNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+ActorRnnNetwork/batch_unflatten/concat/axis?
&ActorRnnNetwork/batch_unflatten/concatConcatV26ActorRnnNetwork/batch_unflatten/strided_slice:output:08ActorRnnNetwork/batch_unflatten/strided_slice_1:output:04ActorRnnNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2(
&ActorRnnNetwork/batch_unflatten/concat?
'ActorRnnNetwork/batch_unflatten/ReshapeReshape4ActorRnnNetwork/input_mlp/dense/Relu_1:activations:0/ActorRnnNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?2)
'ActorRnnNetwork/batch_unflatten/Reshape?
"ActorRnnNetwork/reset_mask/Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"ActorRnnNetwork/reset_mask/Equal/y?
 ActorRnnNetwork/reset_mask/EqualEqual%ActorRnnNetwork/ExpandDims_1:output:0+ActorRnnNetwork/reset_mask/Equal/y:output:0*
T0*
_output_shapes

:2"
 ActorRnnNetwork/reset_mask/Equal?
#ActorRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#ActorRnnNetwork/dynamic_unroll/Rank?
*ActorRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/start?
*ActorRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*ActorRnnNetwork/dynamic_unroll/range/delta?
$ActorRnnNetwork/dynamic_unroll/rangeRange3ActorRnnNetwork/dynamic_unroll/range/start:output:0,ActorRnnNetwork/dynamic_unroll/Rank:output:03ActorRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2&
$ActorRnnNetwork/dynamic_unroll/range?
.ActorRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       20
.ActorRnnNetwork/dynamic_unroll/concat/values_0?
*ActorRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*ActorRnnNetwork/dynamic_unroll/concat/axis?
%ActorRnnNetwork/dynamic_unroll/concatConcatV27ActorRnnNetwork/dynamic_unroll/concat/values_0:output:0-ActorRnnNetwork/dynamic_unroll/range:output:03ActorRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%ActorRnnNetwork/dynamic_unroll/concat?
(ActorRnnNetwork/dynamic_unroll/transpose	Transpose0ActorRnnNetwork/batch_unflatten/Reshape:output:0.ActorRnnNetwork/dynamic_unroll/concat:output:0*
T0*#
_output_shapes
:?2*
(ActorRnnNetwork/dynamic_unroll/transpose?
/ActorRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       21
/ActorRnnNetwork/dynamic_unroll/transpose_1/perm?
*ActorRnnNetwork/dynamic_unroll/transpose_1	Transpose$ActorRnnNetwork/reset_mask/Equal:z:08ActorRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*
_output_shapes

:2,
*ActorRnnNetwork/dynamic_unroll/transpose_1?
$ActorRnnNetwork/dynamic_unroll/zerosConst*
_output_shapes
:	?*
dtype0*
valueB	?*    2&
$ActorRnnNetwork/dynamic_unroll/zeros?
&ActorRnnNetwork/dynamic_unroll/zeros_1Const*
_output_shapes
:	?*
dtype0*
valueB	?*    2(
&ActorRnnNetwork/dynamic_unroll/zeros_1?
&ActorRnnNetwork/dynamic_unroll/SqueezeSqueeze,ActorRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:	?*
squeeze_dims
 2(
&ActorRnnNetwork/dynamic_unroll/Squeeze?
(ActorRnnNetwork/dynamic_unroll/Squeeze_1Squeeze.ActorRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*
_output_shapes
:*
squeeze_dims
 2*
(ActorRnnNetwork/dynamic_unroll/Squeeze_1?
%ActorRnnNetwork/dynamic_unroll/SelectSelect1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0-ActorRnnNetwork/dynamic_unroll/zeros:output:0SelectV2:output:0*
T0*
_output_shapes
:	?2'
%ActorRnnNetwork/dynamic_unroll/Select?
'ActorRnnNetwork/dynamic_unroll/Select_1Select1ActorRnnNetwork/dynamic_unroll/Squeeze_1:output:0/ActorRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_1:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/dynamic_unroll/Select_1?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpReadVariableOpGactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02@
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMulMatMul/ActorRnnNetwork/dynamic_unroll/Squeeze:output:0FActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpIactorrnnnetwork_dynamic_unroll_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02B
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp?
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1MatMul.ActorRnnNetwork/dynamic_unroll/Select:output:0HActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?23
1ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/addAddV29ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul:product:0;ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/add?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpHactorrnnnetwork_dynamic_unroll_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAddBiasAdd0ActorRnnNetwork/dynamic_unroll/lstm_cell/add:z:0GActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/Const?
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8ActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/splitSplitAActorRnnNetwork/dynamic_unroll/lstm_cell/split/split_dim:output:09ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/split?
0ActorRnnNetwork/dynamic_unroll/lstm_cell/SigmoidSigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:0*
T0*
_output_shapes
:	?22
0ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:1*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1?
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mulMul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_1:y:00ActorRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*
_output_shapes
:	?2.
,ActorRnnNetwork/dynamic_unroll/lstm_cell/mul?
-ActorRnnNetwork/dynamic_unroll/lstm_cell/TanhTanh7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:2*
T0*
_output_shapes
:	?2/
-ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1Mul4ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid:y:01ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1AddV20ActorRnnNetwork/dynamic_unroll/lstm_cell/mul:z:02ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1?
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2Sigmoid7ActorRnnNetwork/dynamic_unroll/lstm_cell/split:output:3*
T0*
_output_shapes
:	?24
2ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2?
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1Tanh2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	?21
/ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1?
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2Mul6ActorRnnNetwork/dynamic_unroll/lstm_cell/Sigmoid_2:y:03ActorRnnNetwork/dynamic_unroll/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	?20
.ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2?
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2/
-ActorRnnNetwork/dynamic_unroll/ExpandDims/dim?
)ActorRnnNetwork/dynamic_unroll/ExpandDims
ExpandDims2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:06ActorRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2+
)ActorRnnNetwork/dynamic_unroll/ExpandDims?
%ActorRnnNetwork/batch_flatten_1/ShapeConst*
_output_shapes
:*
dtype0	*-
value$B"	"                     2'
%ActorRnnNetwork/batch_flatten_1/Shape?
-ActorRnnNetwork/batch_flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2/
-ActorRnnNetwork/batch_flatten_1/Reshape/shape?
'ActorRnnNetwork/batch_flatten_1/ReshapeReshape2ActorRnnNetwork/dynamic_unroll/ExpandDims:output:06ActorRnnNetwork/batch_flatten_1/Reshape/shape:output:0*
T0*
_output_shapes
:	?2)
'ActorRnnNetwork/batch_flatten_1/Reshape?
ActorRnnNetwork/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2!
ActorRnnNetwork/flatten_1/Const?
!ActorRnnNetwork/flatten_1/ReshapeReshape0ActorRnnNetwork/batch_flatten_1/Reshape:output:0(ActorRnnNetwork/flatten_1/Const:output:0*
T0*
_output_shapes
:	?2#
!ActorRnnNetwork/flatten_1/Reshape?
,ActorRnnNetwork/action/MatMul/ReadVariableOpReadVariableOp5actorrnnnetwork_action_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,ActorRnnNetwork/action/MatMul/ReadVariableOp?
ActorRnnNetwork/action/MatMulMatMul*ActorRnnNetwork/flatten_1/Reshape:output:04ActorRnnNetwork/action/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/MatMul?
-ActorRnnNetwork/action/BiasAdd/ReadVariableOpReadVariableOp6actorrnnnetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp?
ActorRnnNetwork/action/BiasAddBiasAdd'ActorRnnNetwork/action/MatMul:product:05ActorRnnNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
ActorRnnNetwork/action/BiasAdd?
ActorRnnNetwork/action/TanhTanh'ActorRnnNetwork/action/BiasAdd:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/action/Tanh?
ActorRnnNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
ActorRnnNetwork/Reshape/shape?
ActorRnnNetwork/ReshapeReshapeActorRnnNetwork/action/Tanh:y:0&ActorRnnNetwork/Reshape/shape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/Reshape?
ActorRnnNetwork/Cast/xConst*
_output_shapes
:*
dtype0*
valueB"??u=    2
ActorRnnNetwork/Cast/x?
ActorRnnNetwork/Cast_1/xConst*
_output_shapes
:*
dtype0*
valueB"
?#=  ??2
ActorRnnNetwork/Cast_1/x?
ActorRnnNetwork/mulMul!ActorRnnNetwork/Cast_1/x:output:0 ActorRnnNetwork/Reshape:output:0*
T0*
_output_shapes

:2
ActorRnnNetwork/mul?
ActorRnnNetwork/addAddV2ActorRnnNetwork/Cast/x:output:0ActorRnnNetwork/mul:z:0*
T0*
_output_shapes

:2
ActorRnnNetwork/add?
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5ActorRnnNetwork/batch_unflatten_1/strided_slice/stack?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1?
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2?
/ActorRnnNetwork/batch_unflatten_1/strided_sliceStridedSlice.ActorRnnNetwork/batch_flatten_1/Shape:output:0>ActorRnnNetwork/batch_unflatten_1/strided_slice/stack:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_1:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask21
/ActorRnnNetwork/batch_unflatten_1/strided_slice?
'ActorRnnNetwork/batch_unflatten_1/ShapeConst*
_output_shapes
:*
dtype0	*%
valueB	"              2)
'ActorRnnNetwork/batch_unflatten_1/Shape?
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1?
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2?
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1StridedSlice0ActorRnnNetwork/batch_unflatten_1/Shape:output:0@ActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_1:output:0BActorRnnNetwork/batch_unflatten_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask23
1ActorRnnNetwork/batch_unflatten_1/strided_slice_1?
-ActorRnnNetwork/batch_unflatten_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-ActorRnnNetwork/batch_unflatten_1/concat/axis?
(ActorRnnNetwork/batch_unflatten_1/concatConcatV28ActorRnnNetwork/batch_unflatten_1/strided_slice:output:0:ActorRnnNetwork/batch_unflatten_1/strided_slice_1:output:06ActorRnnNetwork/batch_unflatten_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:2*
(ActorRnnNetwork/batch_unflatten_1/concat?
)ActorRnnNetwork/batch_unflatten_1/ReshapeReshapeActorRnnNetwork/add:z:01ActorRnnNetwork/batch_unflatten_1/concat:output:0*
T0*
Tshape0	*"
_output_shapes
:2+
)ActorRnnNetwork/batch_unflatten_1/Reshape?
ActorRnnNetwork/SqueezeSqueeze2ActorRnnNetwork/batch_unflatten_1/Reshape:output:0*
T0*
_output_shapes

:*
squeeze_dims
2
ActorRnnNetwork/Squeezem
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
(Deterministic_1/sample/BroadcastTo/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         2*
(Deterministic_1/sample/BroadcastTo/shape?
"Deterministic_1/sample/BroadcastToBroadcastTo ActorRnnNetwork/Squeeze:output:01Deterministic_1/sample/BroadcastTo/shape:output:0*
T0*"
_output_shapes
:2$
"Deterministic_1/sample/BroadcastTo?
$Deterministic_1/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$Deterministic_1/sample/Reshape/shape?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0-Deterministic_1/sample/Reshape/shape:output:0*
T0*
_output_shapes

:2 
Deterministic_1/sample/Reshape?
clip_by_value/Minimum/yConst*
_output_shapes
:*
dtype0*
valueB"???=  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:2
clip_by_value/Minimums
clip_by_value/yConst*
_output_shapes
:*
dtype0*
valueB"
ף<  ??2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:2
clip_by_value?
IdentityIdentityclip_by_value:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes

:2

Identity?

Identity_1Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/mul_2:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity2ActorRnnNetwork/dynamic_unroll/lstm_cell/add_1:z:0.^ActorRnnNetwork/action/BiasAdd/ReadVariableOp-^ActorRnnNetwork/action/MatMul/ReadVariableOp@^ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOpA^ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp7^ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp9^ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp6^ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp8^ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*m
_input_shapes\
Z:::::	?:	?:::::::::2^
-ActorRnnNetwork/action/BiasAdd/ReadVariableOp-ActorRnnNetwork/action/BiasAdd/ReadVariableOp2\
,ActorRnnNetwork/action/MatMul/ReadVariableOp,ActorRnnNetwork/action/MatMul/ReadVariableOp2?
?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp?ActorRnnNetwork/dynamic_unroll/lstm_cell/BiasAdd/ReadVariableOp2?
>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp>ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul/ReadVariableOp2?
@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp@ActorRnnNetwork/dynamic_unroll/lstm_cell/MatMul_1/ReadVariableOp2p
6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6ActorRnnNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2t
8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp8ActorRnnNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2n
5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp5ActorRnnNetwork/input_mlp/dense/MatMul/ReadVariableOp2r
7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp7ActorRnnNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:E A

_output_shapes
:
#
_user_specified_name	time_step:EA

_output_shapes
:
#
_user_specified_name	time_step:EA

_output_shapes
:
#
_user_specified_name	time_step:MI
"
_output_shapes
:
#
_user_specified_name	time_step:MI

_output_shapes
:	?
&
_user_specified_namepolicy_state:MI

_output_shapes
:	?
&
_user_specified_namepolicy_state
?
`
&__inference_signature_wrapper_89334081
unknown
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_25520222
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
?
<
__inference_function_2552002
identity

identity_1X
ConstConst*
_output_shapes
:*
dtype0*
valueB:2
Constm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Const:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constg
zerosFillconcat:output:0zeros/Const:output:0*
T0*
_output_shapes
:	?2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Const:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Consto
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	?2	
zeros_1Z
IdentityIdentityzeros:output:0*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identityzeros_1:output:0*
T0*
_output_shapes
:	?2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes 
?$
?
!__inference__traced_save_89334148
file_prefix*
&savev2_global_step_read_readvariableop	<
8savev2_actorrnnnetwork_action_kernel_read_readvariableop:
6savev2_actorrnnnetwork_action_bias_read_readvariableopD
@savev2_actorrnnnetwork_dynamic_unroll_kernel_read_readvariableopN
Jsavev2_actorrnnnetwork_dynamic_unroll_recurrent_kernel_read_readvariableopB
>savev2_actorrnnnetwork_dynamic_unroll_bias_read_readvariableopE
Asavev2_actorrnnnetwork_input_mlp_dense_kernel_read_readvariableopC
?savev2_actorrnnnetwork_input_mlp_dense_bias_read_readvariableopG
Csavev2_actorrnnnetwork_input_mlp_dense_kernel_1_read_readvariableopE
Asavev2_actorrnnnetwork_input_mlp_dense_bias_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_global_step_read_readvariableop8savev2_actorrnnnetwork_action_kernel_read_readvariableop6savev2_actorrnnnetwork_action_bias_read_readvariableop@savev2_actorrnnnetwork_dynamic_unroll_kernel_read_readvariableopJsavev2_actorrnnnetwork_dynamic_unroll_recurrent_kernel_read_readvariableop>savev2_actorrnnnetwork_dynamic_unroll_bias_read_readvariableopAsavev2_actorrnnnetwork_input_mlp_dense_kernel_read_readvariableop?savev2_actorrnnnetwork_input_mlp_dense_bias_read_readvariableopCsavev2_actorrnnnetwork_input_mlp_dense_kernel_1_read_readvariableopAsavev2_actorrnnnetwork_input_mlp_dense_bias_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*n
_input_shapes]
[: : :	?::
??:
??:?:	?:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :%!

_output_shapes
:	?: 

_output_shapes
::&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:

_output_shapes
: 
1

__inference_<lambda>_70520*
_input_shapes "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
action?
+

0/discount
action_0/discount:0
9
0/observation(
action_0/observation:0
'
0/reward
action_0/reward:0
-
0/step_type
action_0/step_type:0
"
1/0
action_1/0:0	?
"
1/1
action_1/1:0	?1
action'
StatefulPartitionedCall:03
state/0(
StatefulPartitionedCall:1	?3
state/1(
StatefulPartitionedCall:2	?tensorflow/serving/predict*
get_initial_statej%
0 
PartitionedCall:0	?%
1 
PartitionedCall:1	?tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:??
?
policy_state_spec

train_step
metadata
model_variables
_all_assets

signatures

iaction
jdistribution
kget_initial_state
lget_metadata
mget_train_step"
_generic_user_object
 "
trackable_list_wrapper
:	 (2global_step
 "
trackable_dict_wrapper
`
0
1
	2

3
4
5
6
7
8"
trackable_tuple_wrapper
5
0
1
2"
trackable_list_wrapper
`

naction
oget_initial_state
pget_train_step
qget_metadata"
signature_map
0:.	?2ActorRnnNetwork/action/kernel
):'2ActorRnnNetwork/action/bias
9:7
??2%ActorRnnNetwork/dynamic_unroll/kernel
C:A
??2/ActorRnnNetwork/dynamic_unroll/recurrent_kernel
2:0?2#ActorRnnNetwork/dynamic_unroll/bias
9:7	?2&ActorRnnNetwork/input_mlp/dense/kernel
3:1?2$ActorRnnNetwork/input_mlp/dense/bias
::8
??2&ActorRnnNetwork/input_mlp/dense/kernel
3:1?2$ActorRnnNetwork/input_mlp/dense/bias
1
ref
1"
trackable_tuple_wrapper
1
ref
1"
trackable_tuple_wrapper
1
ref
1"
trackable_tuple_wrapper
?
_state_spec
_flat_action_spec
_input_layers
_dynamic_unroll
_output_layers
_action_layers
regularization_losses
	variables
trainable_variables
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ActorRnnNetwork", "name": "ActorRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
 "
trackable_list_wrapper
3
	state
1"
trackable_tuple_wrapper
 "
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
?	
"cell
#regularization_losses
$	variables
%trainable_variables
&	keras_api
t__call__
*u&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "DynamicUnroll", "name": "dynamic_unroll", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dynamic_unroll", "trainable": true, "dtype": "float32", "parallel_iterations": 20, "swap_memory": null, "cell": {"class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 256]}}
'
'0"
trackable_list_wrapper
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
	4

5
6
7
8"
trackable_list_wrapper
_
0
1
2
3
	4

5
6
7
8"
trackable_list_wrapper
?
)metrics
regularization_losses
*non_trainable_variables
	variables

+layers
trainable_variables
,layer_regularization_losses
-layer_metrics
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
?
.regularization_losses
/	variables
0trainable_variables
1	keras_api
v__call__
*w&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
x__call__
*y&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "input_mlp/dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "input_mlp/dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 24]}}
?

kernel
bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
z__call__
*{&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "input_mlp/dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "input_mlp/dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 512]}}
?

	kernel

recurrent_kernel
bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
|__call__
*}&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
	0

1
2"
trackable_list_wrapper
5
	0

1
2"
trackable_list_wrapper
?
>metrics
#regularization_losses
?non_trainable_variables
$	variables

@layers
%trainable_variables
Alayer_regularization_losses
Blayer_metrics
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
?
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
~__call__
*&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "action", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "action", "trainable": true, "dtype": "float32", "units": 2, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.003, "maxval": 0.003, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 256]}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
 1
!2
3
'4
(5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Kmetrics
.regularization_losses
Lnon_trainable_variables
/	variables

Mlayers
0trainable_variables
Nlayer_regularization_losses
Olayer_metrics
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Pmetrics
2regularization_losses
Qnon_trainable_variables
3	variables

Rlayers
4trainable_variables
Slayer_regularization_losses
Tlayer_metrics
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Umetrics
6regularization_losses
Vnon_trainable_variables
7	variables

Wlayers
8trainable_variables
Xlayer_regularization_losses
Ylayer_metrics
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
	0

1
2"
trackable_list_wrapper
5
	0

1
2"
trackable_list_wrapper
?
Zmetrics
:regularization_losses
[non_trainable_variables
;	variables

\layers
<trainable_variables
]layer_regularization_losses
^layer_metrics
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
_metrics
Cregularization_losses
`non_trainable_variables
D	variables

alayers
Etrainable_variables
blayer_regularization_losses
clayer_metrics
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
dmetrics
Gregularization_losses
enon_trainable_variables
H	variables

flayers
Itrainable_variables
glayer_regularization_losses
hlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
__inference_action_2552198
__inference_action_2552358?
???
FullArgSpec8
args0?-
jself
j	time_step
jpolicy_state
jseed
varargs
 
varkw
 
defaults?	
? 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
#__inference_distribution_fn_2552512?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_function_2552002?
???
FullArgSpec
args?
jself
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference_<lambda>_70520"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_70517"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_89334065
0/discount0/observation0/reward0/step_type1/01/1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_89334073"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_89334081"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_89334085"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecH
args@?=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults?

 

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecH
args@?=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults?

 

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 9
__inference_<lambda>_70517?

? 
? "? 	2
__inference_<lambda>_70520?

? 
? "? ?
__inference_action_2552198?		
???
???
???
TimeStep-
	step_type ?
time_step/step_type'
reward?
time_step/reward+
discount?
time_step/discount9
observation*?'
time_step/observation
G?D
 ?
policy_state/0	?
 ?
policy_state/1	?

 
? "???

PolicyStep!
action?
actionB
state9?6
?
state/0	?
?
state/1	?
info? ?
__inference_action_2552358?		
???
???
???
TimeStep#
	step_type?
	step_type
reward?
reward!
discount?
discount/
observation ?
observation
-?*
?
0	?
?
1	?

 
? "???

PolicyStep!
action?
actionB
state9?6
?
state/0	?
?
state/1	?
info? ?
#__inference_distribution_fn_2552512?		
???
???
???
TimeStep#
	step_type?
	step_type
reward?
reward!
discount?
discount/
observation ?
observation
-?*
?
0	?
?
1	?
? "???

PolicyStep?
action?????Ã???
`
Q?N
;j9tensorflow_probability.python.distributions.deterministic
jDeterministic
%?"
 
loc?
Identity
? _TFPTypeSpecB
state9?6
?
state/0	?
?
state/1	?
info? ^
__inference_function_2552002>?

? 
? "-?*
?
0	?
?
1	??
&__inference_signature_wrapper_89334065?		
???
? 
???
%

0/discount?

0/discount
3
0/observation"?
0/observation
!
0/reward?
0/reward
'
0/step_type?
0/step_type

1/0?
1/0	?

1/1?
1/1	?"r?o
!
action?
action
$
state/0?
state/0	?
$
state/1?
state/1	?r
&__inference_signature_wrapper_89334073H?

? 
? "7?4

0?
0	?

1?
1	?Z
&__inference_signature_wrapper_893340810?

? 
? "?

int64?
int64 	>
&__inference_signature_wrapper_89334085?

? 
? "? 