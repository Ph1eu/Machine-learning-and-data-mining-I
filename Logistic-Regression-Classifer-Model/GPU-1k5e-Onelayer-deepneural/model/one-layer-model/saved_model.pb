Äð	
»
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.42v2.6.3-62-g9ef160463d18ç
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¦*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
¦*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:¦*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:¦*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:¦*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:¦*
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:¦*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¦d*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	¦d*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:d*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¦*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
¦*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:¦*
dtype0

 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*1
shared_name" Adam/batch_normalization/gamma/m

4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes	
:¦*
dtype0

Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*0
shared_name!Adam/batch_normalization/beta/m

3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes	
:¦*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¦d*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	¦d*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:d*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¦*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
¦*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:¦*
dtype0

 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*1
shared_name" Adam/batch_normalization/gamma/v

4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes	
:¦*
dtype0

Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¦*0
shared_name!Adam/batch_normalization/beta/v

3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes	
:¦*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¦d*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	¦d*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:d*
dtype0

NoOpNoOp
î,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*©,
value,B, B,

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api

axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
 trainable_variables
!	variables
"	keras_api
h

#kernel
$bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
¬
)iter

*beta_1

+beta_2
	,decay
-learning_ratemWmXmYmZ#m[$m\v]v^v_v`#va$vb
 
*
0
1
2
3
#4
$5
8
0
1
2
3
4
5
#6
$7
­
.metrics
/layer_metrics
regularization_losses
trainable_variables

0layers
1layer_regularization_losses
2non_trainable_variables
		variables
 
 
 
 
­
3metrics
4layer_metrics
regularization_losses
trainable_variables

5layers
6layer_regularization_losses
7non_trainable_variables
	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
8metrics
9layer_metrics
regularization_losses
trainable_variables

:layers
;layer_regularization_losses
<non_trainable_variables
	variables
 
 
 
­
=metrics
>layer_metrics
regularization_losses
trainable_variables

?layers
@layer_regularization_losses
Anon_trainable_variables
	variables
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
2
3
­
Bmetrics
Clayer_metrics
regularization_losses
 trainable_variables

Dlayers
Elayer_regularization_losses
Fnon_trainable_variables
!	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1

#0
$1
­
Gmetrics
Hlayer_metrics
%regularization_losses
&trainable_variables

Ilayers
Jlayer_regularization_losses
Knon_trainable_variables
'	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
 
#
0
1
2
3
4
 

0
1
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

0
1
 
 
 
 
 
4
	Ntotal
	Ocount
P	variables
Q	keras_api
D
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

P	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

U	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_flatten_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ  
ÿ
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_inputdense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betadense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2604910
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Æ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_2605385
ý
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense/kernel/vAdam/dense/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*)
Tin"
 2*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2605482åé
Ò~
Ø
#__inference__traced_restore_2605482
file_prefix1
assignvariableop_dense_kernel:
¦,
assignvariableop_1_dense_bias:	¦;
,assignvariableop_2_batch_normalization_gamma:	¦:
+assignvariableop_3_batch_normalization_beta:	¦A
2assignvariableop_4_batch_normalization_moving_mean:	¦E
6assignvariableop_5_batch_normalization_moving_variance:	¦4
!assignvariableop_6_dense_1_kernel:	¦d-
assignvariableop_7_dense_1_bias:d&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: ;
'assignvariableop_17_adam_dense_kernel_m:
¦4
%assignvariableop_18_adam_dense_bias_m:	¦C
4assignvariableop_19_adam_batch_normalization_gamma_m:	¦B
3assignvariableop_20_adam_batch_normalization_beta_m:	¦<
)assignvariableop_21_adam_dense_1_kernel_m:	¦d5
'assignvariableop_22_adam_dense_1_bias_m:d;
'assignvariableop_23_adam_dense_kernel_v:
¦4
%assignvariableop_24_adam_dense_bias_v:	¦C
4assignvariableop_25_adam_batch_normalization_gamma_v:	¦B
3assignvariableop_26_adam_batch_normalization_beta_v:	¦<
)assignvariableop_27_adam_dense_1_kernel_v:	¦d5
'assignvariableop_28_adam_dense_1_bias_v:d
identity_30¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÊ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÂ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2±
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3°
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4·
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5»
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¦
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¤
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8¡
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¡
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18­
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¼
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_batch_normalization_gamma_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20»
AssignVariableOp_20AssignVariableOp3assignvariableop_20_adam_batch_normalization_beta_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21±
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¯
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¯
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24­
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_dense_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¼
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_batch_normalization_gamma_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26»
AssignVariableOp_26AssignVariableOp3assignvariableop_26_adam_batch_normalization_beta_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¯
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÜ
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29f
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_30Ä
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
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
ï	
»
%__inference_signature_wrapper_2604910
flatten_input
unknown:
¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
	unknown_3:	¦
	unknown_4:	¦
	unknown_5:	¦d
	unknown_6:d
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_26043752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameflatten_input
G

G__inference_sequential_layer_call_and_return_conditional_losses_2605001

inputs8
$dense_matmul_readvariableop_resource:
¦4
%dense_biasadd_readvariableop_resource:	¦D
5batch_normalization_batchnorm_readvariableop_resource:	¦H
9batch_normalization_batchnorm_mul_readvariableop_resource:	¦F
7batch_normalization_batchnorm_readvariableop_1_resource:	¦F
7batch_normalization_batchnorm_readvariableop_2_resource:	¦9
&dense_1_matmul_readvariableop_resource:	¦d5
'dense_1_biasadd_readvariableop_resource:d
identity¢,batch_normalization/batchnorm/ReadVariableOp¢.batch_normalization/batchnorm/ReadVariableOp_1¢.batch_normalization/batchnorm/ReadVariableOp_2¢0batch_normalization/batchnorm/mul/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

dense/Relu}
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/IdentityÏ
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#batch_normalization/batchnorm/add/yÙ
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2#
!batch_normalization/batchnorm/add 
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:¦2%
#batch_normalization/batchnorm/RsqrtÛ
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpÖ
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2#
!batch_normalization/batchnorm/mulÆ
#batch_normalization/batchnorm/mul_1Muldropout/Identity:output:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2%
#batch_normalization/batchnorm/mul_1Õ
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:¦*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1Ö
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:¦2%
#batch_normalization/batchnorm/mul_2Õ
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:¦*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2Ô
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2#
!batch_normalization/batchnorm/subÖ
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2%
#batch_normalization/batchnorm/add_1¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	¦d*
dtype02
dense_1/MatMul/ReadVariableOp¬
dense_1/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_1/MatMul¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_1/BiasAdd/ReadVariableOp¡
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_1/SoftmaxÇ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¿
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mult
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityð
NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ü>
¼
"__inference__wrapped_model_2604375
flatten_inputC
/sequential_dense_matmul_readvariableop_resource:
¦?
0sequential_dense_biasadd_readvariableop_resource:	¦O
@sequential_batch_normalization_batchnorm_readvariableop_resource:	¦S
Dsequential_batch_normalization_batchnorm_mul_readvariableop_resource:	¦Q
Bsequential_batch_normalization_batchnorm_readvariableop_1_resource:	¦Q
Bsequential_batch_normalization_batchnorm_readvariableop_2_resource:	¦D
1sequential_dense_1_matmul_readvariableop_resource:	¦d@
2sequential_dense_1_biasadd_readvariableop_resource:d
identity¢7sequential/batch_normalization/batchnorm/ReadVariableOp¢9sequential/batch_normalization/batchnorm/ReadVariableOp_1¢9sequential/batch_normalization/batchnorm/ReadVariableOp_2¢;sequential/batch_normalization/batchnorm/mul/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
sequential/flatten/Const¨
sequential/flatten/ReshapeReshapeflatten_input!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/flatten/ReshapeÂ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype02(
&sequential/dense/MatMul/ReadVariableOpÄ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
sequential/dense/MatMulÀ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpÆ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
sequential/dense/BiasAdd
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
sequential/dense/Relu
sequential/dropout/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
sequential/dropout/Identityð
7sequential/batch_normalization/batchnorm/ReadVariableOpReadVariableOp@sequential_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype029
7sequential/batch_normalization/batchnorm/ReadVariableOp¥
.sequential/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:20
.sequential/batch_normalization/batchnorm/add/y
,sequential/batch_normalization/batchnorm/addAddV2?sequential/batch_normalization/batchnorm/ReadVariableOp:value:07sequential/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2.
,sequential/batch_normalization/batchnorm/addÁ
.sequential/batch_normalization/batchnorm/RsqrtRsqrt0sequential/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:¦20
.sequential/batch_normalization/batchnorm/Rsqrtü
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpDsequential_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype02=
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp
,sequential/batch_normalization/batchnorm/mulMul2sequential/batch_normalization/batchnorm/Rsqrt:y:0Csequential/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2.
,sequential/batch_normalization/batchnorm/mulò
.sequential/batch_normalization/batchnorm/mul_1Mul$sequential/dropout/Identity:output:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦20
.sequential/batch_normalization/batchnorm/mul_1ö
9sequential/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:¦*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_1
.sequential/batch_normalization/batchnorm/mul_2MulAsequential/batch_normalization/batchnorm/ReadVariableOp_1:value:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:¦20
.sequential/batch_normalization/batchnorm/mul_2ö
9sequential/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:¦*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_2
,sequential/batch_normalization/batchnorm/subSubAsequential/batch_normalization/batchnorm/ReadVariableOp_2:value:02sequential/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2.
,sequential/batch_normalization/batchnorm/sub
.sequential/batch_normalization/batchnorm/add_1AddV22sequential/batch_normalization/batchnorm/mul_1:z:00sequential/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦20
.sequential/batch_normalization/batchnorm/add_1Ç
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	¦d*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOpØ
sequential/dense_1/MatMulMatMul2sequential/batch_normalization/batchnorm/add_1:z:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential/dense_1/MatMulÅ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpÍ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential/dense_1/BiasAdd
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential/dense_1/Softmax
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityè
NoOpNoOp8^sequential/batch_normalization/batchnorm/ReadVariableOp:^sequential/batch_normalization/batchnorm/ReadVariableOp_1:^sequential/batch_normalization/batchnorm/ReadVariableOp_2<^sequential/batch_normalization/batchnorm/mul/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2r
7sequential/batch_normalization/batchnorm/ReadVariableOp7sequential/batch_normalization/batchnorm/ReadVariableOp2v
9sequential/batch_normalization/batchnorm/ReadVariableOp_19sequential/batch_normalization/batchnorm/ReadVariableOp_12v
9sequential/batch_normalization/batchnorm/ReadVariableOp_29sequential/batch_normalization/batchnorm/ReadVariableOp_22z
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp;sequential/batch_normalization/batchnorm/mul/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameflatten_input


Â
,__inference_sequential_layer_call_fn_2604795
flatten_input
unknown:
¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
	unknown_3:	¦
	unknown_4:	¦
	unknown_5:	¦d
	unknown_6:d
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26047552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameflatten_input

ö
D__inference_dense_1_layer_call_and_return_conditional_losses_2605253

inputs1
matmul_readvariableop_resource:	¦d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¦d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
Ã
E
)__inference_dropout_layer_call_fn_2605131

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26045862
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
æ.

G__inference_sequential_layer_call_and_return_conditional_losses_2604869
flatten_input!
dense_2604836:
¦
dense_2604838:	¦*
batch_normalization_2604842:	¦*
batch_normalization_2604844:	¦*
batch_normalization_2604846:	¦*
batch_normalization_2604848:	¦"
dense_1_2604851:	¦d
dense_1_2604853:d
identity¢+batch_normalization/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCallÝ
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_26045502
flatten/PartitionedCall¦
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2604836dense_2604838*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26045752
dense/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26046762!
dropout/StatefulPartitionedCall°
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0batch_normalization_2604842batch_normalization_2604844batch_normalization_2604846batch_normalization_2604848*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_26044592-
+batch_normalization/StatefulPartitionedCallÃ
dense_1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_1_2604851dense_1_2604853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26046082!
dense_1/StatefulPartitionedCall°
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604836* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul§
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604838*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÀ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameflatten_input
æ
`
D__inference_flatten_layer_call_and_return_conditional_losses_2604550

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
÷

'__inference_dense_layer_call_fn_2605103

inputs
unknown:
¦
	unknown_0:	¦
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26045752
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ.

G__inference_sequential_layer_call_and_return_conditional_losses_2604755

inputs!
dense_2604722:
¦
dense_2604724:	¦*
batch_normalization_2604728:	¦*
batch_normalization_2604730:	¦*
batch_normalization_2604732:	¦*
batch_normalization_2604734:	¦"
dense_1_2604737:	¦d
dense_1_2604739:d
identity¢+batch_normalization/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCallÖ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_26045502
flatten/PartitionedCall¦
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2604722dense_2604724*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26045752
dense/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26046762!
dropout/StatefulPartitionedCall°
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0batch_normalization_2604728batch_normalization_2604730batch_normalization_2604732batch_normalization_2604734*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_26044592-
+batch_normalization/StatefulPartitionedCallÃ
dense_1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_1_2604737dense_1_2604739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26046082!
dense_1/StatefulPartitionedCall°
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604722* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul§
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604724*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÀ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Þ
Ô
5__inference_batch_normalization_layer_call_fn_2605179

inputs
unknown:	¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_26044592
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
÷
®
__inference_loss_fn_0_2605264K
7dense_kernel_regularizer_square_readvariableop_resource:
¦
identity¢.dense/kernel/Regularizer/Square/ReadVariableOpÚ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mulj
IdentityIdentity dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp
×
Ö
B__inference_dense_layer_call_and_return_conditional_losses_2604575

inputs2
matmul_readvariableop_resource:
¦.
biasadd_readvariableop_resource:	¦
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
ReluÁ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¹
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityß
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç*
í
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2604459

inputs6
'assignmovingavg_readvariableop_resource:	¦8
)assignmovingavg_1_readvariableop_resource:	¦4
%batchnorm_mul_readvariableop_resource:	¦0
!batchnorm_readvariableop_resource:	¦
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	¦*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	¦2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	¦*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:¦*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:¦*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:¦*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:¦*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¦2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¦2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityò
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs

³
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2605199

inputs0
!batchnorm_readvariableop_resource:	¦4
%batchnorm_mul_readvariableop_resource:	¦2
#batchnorm_readvariableop_1_resource:	¦2
#batchnorm_readvariableop_2_resource:	¦
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¦2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¦2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
õ
b
D__inference_dropout_layer_call_and_return_conditional_losses_2604586

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
÷

)__inference_dense_1_layer_call_fn_2605242

inputs
unknown:	¦d
	unknown_0:d
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26046082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
à
Ô
5__inference_batch_normalization_layer_call_fn_2605166

inputs
unknown:	¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_26043992
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
×
Ö
B__inference_dense_layer_call_and_return_conditional_losses_2605126

inputs2
matmul_readvariableop_resource:
¦.
biasadd_readvariableop_resource:	¦
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
ReluÁ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¹
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityß
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
c
D__inference_dropout_layer_call_and_return_conditional_losses_2605153

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs


»
,__inference_sequential_layer_call_fn_2604952

inputs
unknown:
¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
	unknown_3:	¦
	unknown_4:	¦
	unknown_5:	¦d
	unknown_6:d
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26047552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ûn
ì
G__inference_sequential_layer_call_and_return_conditional_losses_2605071

inputs8
$dense_matmul_readvariableop_resource:
¦4
%dense_biasadd_readvariableop_resource:	¦J
;batch_normalization_assignmovingavg_readvariableop_resource:	¦L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	¦H
9batch_normalization_batchnorm_mul_readvariableop_resource:	¦D
5batch_normalization_batchnorm_readvariableop_resource:	¦9
&dense_1_matmul_readvariableop_resource:	¦d5
'dense_1_biasadd_readvariableop_resource:d
identity¢#batch_normalization/AssignMovingAvg¢2batch_normalization/AssignMovingAvg/ReadVariableOp¢%batch_normalization/AssignMovingAvg_1¢4batch_normalization/AssignMovingAvg_1/ReadVariableOp¢,batch_normalization/batchnorm/ReadVariableOp¢0batch_normalization/batchnorm/mul/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

dense/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/dropout/Const
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/dropout/Mulv
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeÍ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2 
dropout/dropout/GreaterEqual/yß
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/dropout/Mul_1²
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indicesß
 batch_normalization/moments/meanMeandropout/dropout/Mul_1:z:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	¦*
	keep_dims(2"
 batch_normalization/moments/mean¹
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	¦2*
(batch_normalization/moments/StopGradientô
-batch_normalization/moments/SquaredDifferenceSquaredDifferencedropout/dropout/Mul_1:z:01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2/
-batch_normalization/moments/SquaredDifferenceº
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indices
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	¦*
	keep_dims(2&
$batch_normalization/moments/variance½
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:¦*
squeeze_dims
 2%
#batch_normalization/moments/SqueezeÅ
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:¦*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2+
)batch_normalization/AssignMovingAvg/decayá
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:¦*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOpé
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:¦2)
'batch_normalization/AssignMovingAvg/subà
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¦2)
'batch_normalization/AssignMovingAvg/mul£
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization/AssignMovingAvg_1/decayç
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:¦*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOpñ
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:¦2+
)batch_normalization/AssignMovingAvg_1/subè
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:¦2+
)batch_normalization/AssignMovingAvg_1/mul­
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#batch_normalization/batchnorm/add/yÓ
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2#
!batch_normalization/batchnorm/add 
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:¦2%
#batch_normalization/batchnorm/RsqrtÛ
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpÖ
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2#
!batch_normalization/batchnorm/mulÆ
#batch_normalization/batchnorm/mul_1Muldropout/dropout/Mul_1:z:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2%
#batch_normalization/batchnorm/mul_1Ì
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:¦2%
#batch_normalization/batchnorm/mul_2Ï
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,batch_normalization/batchnorm/ReadVariableOpÒ
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2#
!batch_normalization/batchnorm/subÖ
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2%
#batch_normalization/batchnorm/add_1¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	¦d*
dtype02
dense_1/MatMul/ReadVariableOp¬
dense_1/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_1/MatMul¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_1/BiasAdd/ReadVariableOp¡
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_1/SoftmaxÇ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¿
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mult
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÈ
NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
À-
ñ
G__inference_sequential_layer_call_and_return_conditional_losses_2604832
flatten_input!
dense_2604799:
¦
dense_2604801:	¦*
batch_normalization_2604805:	¦*
batch_normalization_2604807:	¦*
batch_normalization_2604809:	¦*
batch_normalization_2604811:	¦"
dense_1_2604814:	¦d
dense_1_2604816:d
identity¢+batch_normalization/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp¢dense_1/StatefulPartitionedCallÝ
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_26045502
flatten/PartitionedCall¦
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2604799dense_2604801*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26045752
dense/StatefulPartitionedCallö
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26045862
dropout/PartitionedCallª
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0batch_normalization_2604805batch_normalization_2604807batch_normalization_2604809batch_normalization_2604811*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_26043992-
+batch_normalization/StatefulPartitionedCallÃ
dense_1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_1_2604814dense_1_2604816*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26046082!
dense_1/StatefulPartitionedCall°
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604799* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul§
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604801*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameflatten_input
Ñ
E
)__inference_flatten_layer_call_fn_2605076

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_26045502
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


Â
,__inference_sequential_layer_call_fn_2604646
flatten_input
unknown:
¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
	unknown_3:	¦
	unknown_4:	¦
	unknown_5:	¦d
	unknown_6:d
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26046272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
'
_user_specified_nameflatten_input
æ
`
D__inference_flatten_layer_call_and_return_conditional_losses_2605082

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ç*
í
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2605233

inputs6
'assignmovingavg_readvariableop_resource:	¦8
)assignmovingavg_1_readvariableop_resource:	¦4
%batchnorm_mul_readvariableop_resource:	¦0
!batchnorm_readvariableop_resource:	¦
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	¦*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	¦2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	¦*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:¦*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:¦*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:¦*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:¦*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:¦2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¦2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¦2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityò
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
³
c
D__inference_dropout_layer_call_and_return_conditional_losses_2604676

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
«-
ê
G__inference_sequential_layer_call_and_return_conditional_losses_2604627

inputs!
dense_2604576:
¦
dense_2604578:	¦*
batch_normalization_2604588:	¦*
batch_normalization_2604590:	¦*
batch_normalization_2604592:	¦*
batch_normalization_2604594:	¦"
dense_1_2604609:	¦d
dense_1_2604611:d
identity¢+batch_normalization/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢,dense/bias/Regularizer/Square/ReadVariableOp¢.dense/kernel/Regularizer/Square/ReadVariableOp¢dense_1/StatefulPartitionedCallÖ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_26045502
flatten/PartitionedCall¦
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2604576dense_2604578*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26045752
dense/StatefulPartitionedCallö
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26045862
dropout/PartitionedCallª
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0batch_normalization_2604588batch_normalization_2604590batch_normalization_2604592batch_normalization_2604594*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_26043992-
+batch_normalization/StatefulPartitionedCallÃ
dense_1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_1_2604609dense_1_2604611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26046082!
dense_1/StatefulPartitionedCall°
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604576* 
_output_shapes
:
¦*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp¯
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¦2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
dense/kernel/Regularizer/mul/x´
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul§
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2604578*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
õ
b
D__inference_dropout_layer_call_and_return_conditional_losses_2605141

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs


»
,__inference_sequential_layer_call_fn_2604931

inputs
unknown:
¦
	unknown_0:	¦
	unknown_1:	¦
	unknown_2:	¦
	unknown_3:	¦
	unknown_4:	¦
	unknown_5:	¦d
	unknown_6:d
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26046272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

³
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2604399

inputs0
!batchnorm_readvariableop_resource:	¦4
%batchnorm_mul_readvariableop_resource:	¦2
#batchnorm_readvariableop_1_resource:	¦2
#batchnorm_readvariableop_2_resource:	¦
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¦2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¦2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¦*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¦2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:¦*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¦2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
§B
¶
 __inference__traced_save_2605385
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÄ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices¬
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Ï
_input_shapes½
º: :
¦:¦:¦:¦:¦:¦:	¦d:d: : : : : : : : : :
¦:¦:¦:¦:	¦d:d:
¦:¦:¦:¦:	¦d:d: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:%!

_output_shapes
:	¦d: 

_output_shapes
:d:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:%!

_output_shapes
:	¦d: 

_output_shapes
:d:&"
 
_output_shapes
:
¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:!

_output_shapes	
:¦:%!

_output_shapes
:	¦d: 

_output_shapes
:d:

_output_shapes
: 
¥
b
)__inference_dropout_layer_call_fn_2605136

inputs
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26046762
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs
±
¥
__inference_loss_fn_1_2605275D
5dense_bias_regularizer_square_readvariableop_resource:	¦
identity¢,dense/bias/Regularizer/Square/ReadVariableOpÏ
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOp5dense_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:¦*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp¤
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¦2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constª
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mulh
IdentityIdentitydense/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity}
NoOpNoOp-^dense/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp

ö
D__inference_dense_1_layer_call_and_return_conditional_losses_2604608

inputs1
matmul_readvariableop_resource:	¦d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¦d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¦: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
O
flatten_input>
serving_default_flatten_input:0ÿÿÿÿÿÿÿÿÿ  ;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿdtensorflow/serving/predict:v
õ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
c__call__
*d&call_and_return_all_conditional_losses
e_default_save_signature"
_tf_keras_sequential
¥
regularization_losses
trainable_variables
	variables
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
regularization_losses
trainable_variables
	variables
	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
 trainable_variables
!	variables
"	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
»

#kernel
$bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
)iter

*beta_1

+beta_2
	,decay
-learning_ratemWmXmYmZ#m[$m\v]v^v_v`#va$vb"
	optimizer
.
p0
q1"
trackable_list_wrapper
J
0
1
2
3
#4
$5"
trackable_list_wrapper
X
0
1
2
3
4
5
#6
$7"
trackable_list_wrapper
Ê
.metrics
/layer_metrics
regularization_losses
trainable_variables

0layers
1layer_regularization_losses
2non_trainable_variables
		variables
c__call__
e_default_save_signature
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
,
rserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
3metrics
4layer_metrics
regularization_losses
trainable_variables

5layers
6layer_regularization_losses
7non_trainable_variables
	variables
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
 :
¦2dense/kernel
:¦2
dense/bias
.
p0
q1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
8metrics
9layer_metrics
regularization_losses
trainable_variables

:layers
;layer_regularization_losses
<non_trainable_variables
	variables
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
=metrics
>layer_metrics
regularization_losses
trainable_variables

?layers
@layer_regularization_losses
Anon_trainable_variables
	variables
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(:&¦2batch_normalization/gamma
':%¦2batch_normalization/beta
0:.¦ (2batch_normalization/moving_mean
4:2¦ (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
­
Bmetrics
Clayer_metrics
regularization_losses
 trainable_variables

Dlayers
Elayer_regularization_losses
Fnon_trainable_variables
!	variables
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
!:	¦d2dense_1/kernel
:d2dense_1/bias
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
­
Gmetrics
Hlayer_metrics
%regularization_losses
&trainable_variables

Ilayers
Jlayer_regularization_losses
Knon_trainable_variables
'	variables
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
L0
M1"
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
.
p0
q1"
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
.
0
1"
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
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
^
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
%:#
¦2Adam/dense/kernel/m
:¦2Adam/dense/bias/m
-:+¦2 Adam/batch_normalization/gamma/m
,:*¦2Adam/batch_normalization/beta/m
&:$	¦d2Adam/dense_1/kernel/m
:d2Adam/dense_1/bias/m
%:#
¦2Adam/dense/kernel/v
:¦2Adam/dense/bias/v
-:+¦2 Adam/batch_normalization/gamma/v
,:*¦2Adam/batch_normalization/beta/v
&:$	¦d2Adam/dense_1/kernel/v
:d2Adam/dense_1/bias/v
þ2û
,__inference_sequential_layer_call_fn_2604646
,__inference_sequential_layer_call_fn_2604931
,__inference_sequential_layer_call_fn_2604952
,__inference_sequential_layer_call_fn_2604795À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_layer_call_and_return_conditional_losses_2605001
G__inference_sequential_layer_call_and_return_conditional_losses_2605071
G__inference_sequential_layer_call_and_return_conditional_losses_2604832
G__inference_sequential_layer_call_and_return_conditional_losses_2604869À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
"__inference__wrapped_model_2604375flatten_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_layer_call_fn_2605076¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_layer_call_and_return_conditional_losses_2605082¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_layer_call_fn_2605103¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_layer_call_and_return_conditional_losses_2605126¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_dropout_layer_call_fn_2605131
)__inference_dropout_layer_call_fn_2605136´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_layer_call_and_return_conditional_losses_2605141
D__inference_dropout_layer_call_and_return_conditional_losses_2605153´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨2¥
5__inference_batch_normalization_layer_call_fn_2605166
5__inference_batch_normalization_layer_call_fn_2605179´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2605199
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2605233´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_1_layer_call_fn_2605242¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_1_layer_call_and_return_conditional_losses_2605253¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±
__inference_loss_fn_0_2605264
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_1_2605275
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÒBÏ
%__inference_signature_wrapper_2604910flatten_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 £
"__inference__wrapped_model_2604375}#$>¢;
4¢1
/,
flatten_inputÿÿÿÿÿÿÿÿÿ  
ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿd¸
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2605199d4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¦
 ¸
P__inference_batch_normalization_layer_call_and_return_conditional_losses_2605233d4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¦
 
5__inference_batch_normalization_layer_call_fn_2605166W4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p 
ª "ÿÿÿÿÿÿÿÿÿ¦
5__inference_batch_normalization_layer_call_fn_2605179W4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p
ª "ÿÿÿÿÿÿÿÿÿ¦¥
D__inference_dense_1_layer_call_and_return_conditional_losses_2605253]#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¦
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 }
)__inference_dense_1_layer_call_fn_2605242P#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¦
ª "ÿÿÿÿÿÿÿÿÿd¤
B__inference_dense_layer_call_and_return_conditional_losses_2605126^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¦
 |
'__inference_dense_layer_call_fn_2605103Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦¦
D__inference_dropout_layer_call_and_return_conditional_losses_2605141^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¦
 ¦
D__inference_dropout_layer_call_and_return_conditional_losses_2605153^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¦
 ~
)__inference_dropout_layer_call_fn_2605131Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p 
ª "ÿÿÿÿÿÿÿÿÿ¦~
)__inference_dropout_layer_call_fn_2605136Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¦
p
ª "ÿÿÿÿÿÿÿÿÿ¦©
D__inference_flatten_layer_call_and_return_conditional_losses_2605082a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ  
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_flatten_layer_call_fn_2605076T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ  
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_2605264¢

¢ 
ª " <
__inference_loss_fn_1_2605275¢

¢ 
ª " Ä
G__inference_sequential_layer_call_and_return_conditional_losses_2604832y#$F¢C
<¢9
/,
flatten_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 Ä
G__inference_sequential_layer_call_and_return_conditional_losses_2604869y#$F¢C
<¢9
/,
flatten_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ½
G__inference_sequential_layer_call_and_return_conditional_losses_2605001r#$?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ½
G__inference_sequential_layer_call_and_return_conditional_losses_2605071r#$?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
,__inference_sequential_layer_call_fn_2604646l#$F¢C
<¢9
/,
flatten_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
,__inference_sequential_layer_call_fn_2604795l#$F¢C
<¢9
/,
flatten_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿd
,__inference_sequential_layer_call_fn_2604931e#$?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
,__inference_sequential_layer_call_fn_2604952e#$?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿd¸
%__inference_signature_wrapper_2604910#$O¢L
¢ 
EªB
@
flatten_input/,
flatten_inputÿÿÿÿÿÿÿÿÿ  "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿd