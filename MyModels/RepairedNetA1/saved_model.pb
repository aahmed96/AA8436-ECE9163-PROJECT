Д§

±З
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.7.02v2.7.0-0-gc256c071bb28Б≠
~
conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_1/kernel
w
!conv_1/kernel/Read/ReadVariableOpReadVariableOpconv_1/kernel*&
_output_shapes
:*
dtype0
n
conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_1/bias
g
conv_1/bias/Read/ReadVariableOpReadVariableOpconv_1/bias*
_output_shapes
:*
dtype0
~
conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameconv_2/kernel
w
!conv_2/kernel/Read/ReadVariableOpReadVariableOpconv_2/kernel*&
_output_shapes
:(*
dtype0
n
conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameconv_2/bias
g
conv_2/bias/Read/ReadVariableOpReadVariableOpconv_2/bias*
_output_shapes
:(*
dtype0
~
conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(<*
shared_nameconv_3/kernel
w
!conv_3/kernel/Read/ReadVariableOpReadVariableOpconv_3/kernel*&
_output_shapes
:(<*
dtype0
n
conv_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameconv_3/bias
g
conv_3/bias/Read/ReadVariableOpReadVariableOpconv_3/bias*
_output_shapes
:<*
dtype0
~
conv_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<P*
shared_nameconv_4/kernel
w
!conv_4/kernel/Read/ReadVariableOpReadVariableOpconv_4/kernel*&
_output_shapes
:<P*
dtype0
n
conv_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_nameconv_4/bias
g
conv_4/bias/Read/ReadVariableOpReadVariableOpconv_4/bias*
_output_shapes
:P*
dtype0
t
fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
∞	†*
shared_namefc_1/kernel
m
fc_1/kernel/Read/ReadVariableOpReadVariableOpfc_1/kernel* 
_output_shapes
:
∞	†*
dtype0
k
	fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*
shared_name	fc_1/bias
d
fc_1/bias/Read/ReadVariableOpReadVariableOp	fc_1/bias*
_output_shapes	
:†*
dtype0
t
fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ј†*
shared_namefc_2/kernel
m
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel* 
_output_shapes
:
ј†*
dtype0
k
	fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*
shared_name	fc_2/bias
d
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes	
:†*
dtype0
x
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†Г
*
shared_nameoutput/kernel
q
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel* 
_output_shapes
:
†Г
*
dtype0
o
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Г
*
shared_nameoutput/bias
h
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes	
:Г
*
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

NoOpNoOp
е7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*†7
valueЦ7BУ7 BМ7
п
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
R
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
R
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
R
:	variables
;trainable_variables
<regularization_losses
=	keras_api
R
>	variables
?trainable_variables
@regularization_losses
A	keras_api
h

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
h

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
R
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
h

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
 
f
0
1
 2
!3
*4
+5
46
57
B8
C9
H10
I11
V12
W13
f
0
1
 2
!3
*4
+5
46
57
B8
C9
H10
I11
V12
W13
 
≠
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
 
YW
VARIABLE_VALUEconv_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
≠
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
YW
VARIABLE_VALUEconv_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
≠
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
"	variables
#trainable_variables
$regularization_losses
 
 
 
≠
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
&	variables
'trainable_variables
(regularization_losses
YW
VARIABLE_VALUEconv_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
≠
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
,	variables
-trainable_variables
.regularization_losses
 
 
 
≠
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
0	variables
1trainable_variables
2regularization_losses
YW
VARIABLE_VALUEconv_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
±
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
6	variables
7trainable_variables
8regularization_losses
 
 
 
≤
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
:	variables
;trainable_variables
<regularization_losses
 
 
 
≤
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
>	variables
?trainable_variables
@regularization_losses
WU
VARIABLE_VALUEfc_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1

B0
C1
 
≤
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
WU
VARIABLE_VALUEfc_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

H0
I1
 
≤
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 
 
 
≤
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
 
 
 
≤
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
R	variables
Strainable_variables
Tregularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

V0
W1
 
≤
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
 
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14

І0
®1
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
8

©total

™count
Ђ	variables
ђ	keras_api
I

≠total

Ѓcount
ѓ
_fn_kwargs
∞	variables
±	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

©0
™1

Ђ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

≠0
Ѓ1

∞	variables
И
serving_default_inputPlaceholder*/
_output_shapes
:€€€€€€€€€7/*
dtype0*$
shape:€€€€€€€€€7/
М
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_3/kernelconv_3/biasconv_4/kernelconv_4/biasfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_227879
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ф
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv_1/kernel/Read/ReadVariableOpconv_1/bias/Read/ReadVariableOp!conv_2/kernel/Read/ReadVariableOpconv_2/bias/Read/ReadVariableOp!conv_3/kernel/Read/ReadVariableOpconv_3/bias/Read/ReadVariableOp!conv_4/kernel/Read/ReadVariableOpconv_4/bias/Read/ReadVariableOpfc_1/kernel/Read/ReadVariableOpfc_1/bias/Read/ReadVariableOpfc_2/kernel/Read/ReadVariableOpfc_2/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_228384
З
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_3/kernelconv_3/biasconv_4/kernelconv_4/biasfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/biastotalcounttotal_1count_1*
Tin
2*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_228448†≈
ќ	
ф
@__inference_fc_1_layer_call_and_return_conditional_losses_227411

inputs2
matmul_readvariableop_resource:
∞	†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
К
^
B__inference_pool_3_layer_call_and_return_conditional_losses_228180

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
©
C
'__inference_pool_2_layer_call_fn_228130

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_2_layer_call_and_return_conditional_losses_227277Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
тG
≤

"__inference__traced_restore_228448
file_prefix8
assignvariableop_conv_1_kernel:,
assignvariableop_1_conv_1_bias::
 assignvariableop_2_conv_2_kernel:(,
assignvariableop_3_conv_2_bias:(:
 assignvariableop_4_conv_3_kernel:(<,
assignvariableop_5_conv_3_bias:<:
 assignvariableop_6_conv_4_kernel:<P,
assignvariableop_7_conv_4_bias:P2
assignvariableop_8_fc_1_kernel:
∞	†+
assignvariableop_9_fc_1_bias:	†3
assignvariableop_10_fc_2_kernel:
ј†,
assignvariableop_11_fc_2_bias:	†5
!assignvariableop_12_output_kernel:
†Г
.
assignvariableop_13_output_bias:	Г
#
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: 
identity_19ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9з
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Н
valueГBАB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B э
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOpAssignVariableOpassignvariableop_conv_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_fc_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_12AssignVariableOp!assignvariableop_12_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_13AssignVariableOpassignvariableop_13_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 џ
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: »
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
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
÷D
љ

C__inference_model_1_layer_call_and_return_conditional_losses_228065

inputs?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:(4
&conv_2_biasadd_readvariableop_resource:(?
%conv_3_conv2d_readvariableop_resource:(<4
&conv_3_biasadd_readvariableop_resource:<?
%conv_4_conv2d_readvariableop_resource:<P4
&conv_4_biasadd_readvariableop_resource:P7
#fc_1_matmul_readvariableop_resource:
∞	†3
$fc_1_biasadd_readvariableop_resource:	†7
#fc_2_matmul_readvariableop_resource:
ј†3
$fc_2_biasadd_readvariableop_resource:	†9
%output_matmul_readvariableop_resource:
†Г
5
&output_biasadd_readvariableop_resource:	Г

identityИҐconv_1/BiasAdd/ReadVariableOpҐconv_1/Conv2D/ReadVariableOpҐconv_2/BiasAdd/ReadVariableOpҐconv_2/Conv2D/ReadVariableOpҐconv_3/BiasAdd/ReadVariableOpҐconv_3/Conv2D/ReadVariableOpҐconv_4/BiasAdd/ReadVariableOpҐconv_4/Conv2D/ReadVariableOpҐfc_1/BiasAdd/ReadVariableOpҐfc_1/MatMul/ReadVariableOpҐfc_2/BiasAdd/ReadVariableOpҐfc_2/MatMul/ReadVariableOpҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOpК
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0®
conv_1/Conv2DConv2Dinputs$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
А
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,f
conv_1/ReluReluconv_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,°
pool_1/MaxPoolMaxPoolconv_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
К
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0є
conv_2/Conv2DConv2Dpool_1/MaxPool:output:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
А
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Т
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(f
conv_2/ReluReluconv_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(°
pool_2/MaxPoolMaxPoolconv_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
К
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0є
conv_3/Conv2DConv2Dpool_2/MaxPool:output:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
А
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0Т
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<f
conv_3/ReluReluconv_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<°
pool_3/MaxPoolMaxPoolconv_3/Relu:activations:0*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
К
conv_4/Conv2D/ReadVariableOpReadVariableOp%conv_4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0є
conv_4/Conv2DConv2Dpool_3/MaxPool:output:0$conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
А
conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Т
conv_4/BiasAddBiasAddconv_4/Conv2D:output:0%conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€Pf
conv_4/ReluReluconv_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€P`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Д
flatten_2/ReshapeReshapeconv_4/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  В
flatten_1/ReshapeReshapepool_3/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	А
fc_1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0И
fc_1/MatMulMatMulflatten_1/Reshape:output:0"fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†}
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0Ж
fc_1/BiasAddBiasAddfc_1/MatMul:product:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†А
fc_2/MatMul/ReadVariableOpReadVariableOp#fc_2_matmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0И
fc_2/MatMulMatMulflatten_2/Reshape:output:0"fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†}
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0Ж
fc_2/BiasAddBiasAddfc_2/MatMul:product:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
	add_1/addAddV2fc_1/BiasAdd:output:0fc_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€†[
activation_1/ReluReluadd_1/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Д
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0С
output/MatMulMatMulactivation_1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
Б
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0М
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
e
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
h
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
ч
NoOpNoOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^conv_4/BiasAdd/ReadVariableOp^conv_4/Conv2D/ReadVariableOp^fc_1/BiasAdd/ReadVariableOp^fc_1/MatMul/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp^fc_2/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2>
conv_4/BiasAdd/ReadVariableOpconv_4/BiasAdd/ReadVariableOp2<
conv_4/Conv2D/ReadVariableOpconv_4/Conv2D/ReadVariableOp2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp28
fc_1/MatMul/ReadVariableOpfc_1/MatMul/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp28
fc_2/MatMul/ReadVariableOpfc_2/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
Љ
C
'__inference_pool_1_layer_call_fn_228095

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_1_layer_call_and_return_conditional_losses_227320h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€4,:W S
/
_output_shapes
:€€€€€€€€€4,
 
_user_specified_nameinputs
”
А
$__inference_signature_wrapper_227879	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_227256p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
ьN
ъ
!__inference__wrapped_model_227256	
inputG
-model_1_conv_1_conv2d_readvariableop_resource:<
.model_1_conv_1_biasadd_readvariableop_resource:G
-model_1_conv_2_conv2d_readvariableop_resource:(<
.model_1_conv_2_biasadd_readvariableop_resource:(G
-model_1_conv_3_conv2d_readvariableop_resource:(<<
.model_1_conv_3_biasadd_readvariableop_resource:<G
-model_1_conv_4_conv2d_readvariableop_resource:<P<
.model_1_conv_4_biasadd_readvariableop_resource:P?
+model_1_fc_1_matmul_readvariableop_resource:
∞	†;
,model_1_fc_1_biasadd_readvariableop_resource:	†?
+model_1_fc_2_matmul_readvariableop_resource:
ј†;
,model_1_fc_2_biasadd_readvariableop_resource:	†A
-model_1_output_matmul_readvariableop_resource:
†Г
=
.model_1_output_biasadd_readvariableop_resource:	Г

identityИҐ%model_1/conv_1/BiasAdd/ReadVariableOpҐ$model_1/conv_1/Conv2D/ReadVariableOpҐ%model_1/conv_2/BiasAdd/ReadVariableOpҐ$model_1/conv_2/Conv2D/ReadVariableOpҐ%model_1/conv_3/BiasAdd/ReadVariableOpҐ$model_1/conv_3/Conv2D/ReadVariableOpҐ%model_1/conv_4/BiasAdd/ReadVariableOpҐ$model_1/conv_4/Conv2D/ReadVariableOpҐ#model_1/fc_1/BiasAdd/ReadVariableOpҐ"model_1/fc_1/MatMul/ReadVariableOpҐ#model_1/fc_2/BiasAdd/ReadVariableOpҐ"model_1/fc_2/MatMul/ReadVariableOpҐ%model_1/output/BiasAdd/ReadVariableOpҐ$model_1/output/MatMul/ReadVariableOpЪ
$model_1/conv_1/Conv2D/ReadVariableOpReadVariableOp-model_1_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ј
model_1/conv_1/Conv2DConv2Dinput,model_1/conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
Р
%model_1/conv_1/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0™
model_1/conv_1/BiasAddBiasAddmodel_1/conv_1/Conv2D:output:0-model_1/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,v
model_1/conv_1/ReluRelumodel_1/conv_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,±
model_1/pool_1/MaxPoolMaxPool!model_1/conv_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
Ъ
$model_1/conv_2/Conv2D/ReadVariableOpReadVariableOp-model_1_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0—
model_1/conv_2/Conv2DConv2Dmodel_1/pool_1/MaxPool:output:0,model_1/conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
Р
%model_1/conv_2/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0™
model_1/conv_2/BiasAddBiasAddmodel_1/conv_2/Conv2D:output:0-model_1/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(v
model_1/conv_2/ReluRelumodel_1/conv_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(±
model_1/pool_2/MaxPoolMaxPool!model_1/conv_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
Ъ
$model_1/conv_3/Conv2D/ReadVariableOpReadVariableOp-model_1_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0—
model_1/conv_3/Conv2DConv2Dmodel_1/pool_2/MaxPool:output:0,model_1/conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
Р
%model_1/conv_3/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0™
model_1/conv_3/BiasAddBiasAddmodel_1/conv_3/Conv2D:output:0-model_1/conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<v
model_1/conv_3/ReluRelumodel_1/conv_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<±
model_1/pool_3/MaxPoolMaxPool!model_1/conv_3/Relu:activations:0*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
Ъ
$model_1/conv_4/Conv2D/ReadVariableOpReadVariableOp-model_1_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0—
model_1/conv_4/Conv2DConv2Dmodel_1/pool_3/MaxPool:output:0,model_1/conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
Р
%model_1/conv_4/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0™
model_1/conv_4/BiasAddBiasAddmodel_1/conv_4/Conv2D:output:0-model_1/conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€Pv
model_1/conv_4/ReluRelumodel_1/conv_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ph
model_1/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Ь
model_1/flatten_2/ReshapeReshape!model_1/conv_4/Relu:activations:0 model_1/flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јh
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  Ъ
model_1/flatten_1/ReshapeReshapemodel_1/pool_3/MaxPool:output:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Р
"model_1/fc_1/MatMul/ReadVariableOpReadVariableOp+model_1_fc_1_matmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0†
model_1/fc_1/MatMulMatMul"model_1/flatten_1/Reshape:output:0*model_1/fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Н
#model_1/fc_1/BiasAdd/ReadVariableOpReadVariableOp,model_1_fc_1_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0Ю
model_1/fc_1/BiasAddBiasAddmodel_1/fc_1/MatMul:product:0+model_1/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Р
"model_1/fc_2/MatMul/ReadVariableOpReadVariableOp+model_1_fc_2_matmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0†
model_1/fc_2/MatMulMatMul"model_1/flatten_2/Reshape:output:0*model_1/fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Н
#model_1/fc_2/BiasAdd/ReadVariableOpReadVariableOp,model_1_fc_2_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0Ю
model_1/fc_2/BiasAddBiasAddmodel_1/fc_2/MatMul:product:0+model_1/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Л
model_1/add_1/addAddV2model_1/fc_1/BiasAdd:output:0model_1/fc_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€†k
model_1/activation_1/ReluRelumodel_1/add_1/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Ф
$model_1/output/MatMul/ReadVariableOpReadVariableOp-model_1_output_matmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0©
model_1/output/MatMulMatMul'model_1/activation_1/Relu:activations:0,model_1/output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
С
%model_1/output/BiasAdd/ReadVariableOpReadVariableOp.model_1_output_biasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0§
model_1/output/BiasAddBiasAddmodel_1/output/MatMul:product:0-model_1/output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
u
model_1/output/SoftmaxSoftmaxmodel_1/output/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
p
IdentityIdentity model_1/output/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
з
NoOpNoOp&^model_1/conv_1/BiasAdd/ReadVariableOp%^model_1/conv_1/Conv2D/ReadVariableOp&^model_1/conv_2/BiasAdd/ReadVariableOp%^model_1/conv_2/Conv2D/ReadVariableOp&^model_1/conv_3/BiasAdd/ReadVariableOp%^model_1/conv_3/Conv2D/ReadVariableOp&^model_1/conv_4/BiasAdd/ReadVariableOp%^model_1/conv_4/Conv2D/ReadVariableOp$^model_1/fc_1/BiasAdd/ReadVariableOp#^model_1/fc_1/MatMul/ReadVariableOp$^model_1/fc_2/BiasAdd/ReadVariableOp#^model_1/fc_2/MatMul/ReadVariableOp&^model_1/output/BiasAdd/ReadVariableOp%^model_1/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2N
%model_1/conv_1/BiasAdd/ReadVariableOp%model_1/conv_1/BiasAdd/ReadVariableOp2L
$model_1/conv_1/Conv2D/ReadVariableOp$model_1/conv_1/Conv2D/ReadVariableOp2N
%model_1/conv_2/BiasAdd/ReadVariableOp%model_1/conv_2/BiasAdd/ReadVariableOp2L
$model_1/conv_2/Conv2D/ReadVariableOp$model_1/conv_2/Conv2D/ReadVariableOp2N
%model_1/conv_3/BiasAdd/ReadVariableOp%model_1/conv_3/BiasAdd/ReadVariableOp2L
$model_1/conv_3/Conv2D/ReadVariableOp$model_1/conv_3/Conv2D/ReadVariableOp2N
%model_1/conv_4/BiasAdd/ReadVariableOp%model_1/conv_4/BiasAdd/ReadVariableOp2L
$model_1/conv_4/Conv2D/ReadVariableOp$model_1/conv_4/Conv2D/ReadVariableOp2J
#model_1/fc_1/BiasAdd/ReadVariableOp#model_1/fc_1/BiasAdd/ReadVariableOp2H
"model_1/fc_1/MatMul/ReadVariableOp"model_1/fc_1/MatMul/ReadVariableOp2J
#model_1/fc_2/BiasAdd/ReadVariableOp#model_1/fc_2/BiasAdd/ReadVariableOp2H
"model_1/fc_2/MatMul/ReadVariableOp"model_1/fc_2/MatMul/ReadVariableOp2N
%model_1/output/BiasAdd/ReadVariableOp%model_1/output/BiasAdd/ReadVariableOp2L
$model_1/output/MatMul/ReadVariableOp$model_1/output/MatMul/ReadVariableOp:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
Ю
^
B__inference_pool_1_layer_call_and_return_conditional_losses_228105

inputs
identityЗ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€4,:W S
/
_output_shapes
:€€€€€€€€€4,
 
_user_specified_nameinputs
ќ	
ф
@__inference_fc_1_layer_call_and_return_conditional_losses_228246

inputs2
matmul_readvariableop_resource:
∞	†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
»
Ч
'__inference_output_layer_call_fn_228296

inputs
unknown:
†Г

	unknown_0:	Г

identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_227459p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
К
^
B__inference_pool_1_layer_call_and_return_conditional_losses_227265

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
К
^
B__inference_pool_2_layer_call_and_return_conditional_losses_227277

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ю
^
B__inference_pool_1_layer_call_and_return_conditional_losses_227320

inputs
identityЗ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€4,:W S
/
_output_shapes
:€€€€€€€€€4,
 
_user_specified_nameinputs
п7
Ш
C__inference_model_1_layer_call_and_return_conditional_losses_227466

inputs'
conv_1_227311:
conv_1_227313:'
conv_2_227334:(
conv_2_227336:('
conv_3_227357:(<
conv_3_227359:<'
conv_4_227380:<P
conv_4_227382:P
fc_1_227412:
∞	†
fc_1_227414:	†
fc_2_227428:
ј†
fc_2_227430:	†!
output_227460:
†Г

output_227462:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallу
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_227311conv_1_227313*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_227310а
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_1_layer_call_and_return_conditional_losses_227320М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_227334conv_2_227336*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_227333а
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_2_layer_call_and_return_conditional_losses_227343М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_227357conv_3_227359*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_3_layer_call_and_return_conditional_losses_227356а
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_3_layer_call_and_return_conditional_losses_227366М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_227380conv_4_227382*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_4_layer_call_and_return_conditional_losses_227379я
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_227391„
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227399А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_227412fc_1_227414*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_227411А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_227428fc_2_227430*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_227427э
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_add_1_layer_call_and_return_conditional_losses_227439№
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_227446Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_227460output_227462*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_227459w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
©
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
«
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_227391

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
щ
Д
(__inference_model_1_layer_call_fn_227752	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_227688p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
©
C
'__inference_pool_1_layer_call_fn_228090

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_1_layer_call_and_return_conditional_losses_227265Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
К
^
B__inference_pool_3_layer_call_and_return_conditional_losses_227289

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
й
Ь
'__inference_conv_2_layer_call_fn_228114

inputs!
unknown:(
	unknown_0:(
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_227333w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™

ц
B__inference_output_layer_call_and_return_conditional_losses_227459

inputs2
matmul_readvariableop_resource:
†Г
.
biasadd_readvariableop_resource:	Г

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
й
Ь
'__inference_conv_3_layer_call_fn_228154

inputs!
unknown:(<
	unknown_0:<
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_3_layer_call_and_return_conditional_losses_227356w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
п7
Ш
C__inference_model_1_layer_call_and_return_conditional_losses_227688

inputs'
conv_1_227645:
conv_1_227647:'
conv_2_227651:(
conv_2_227653:('
conv_3_227657:(<
conv_3_227659:<'
conv_4_227663:<P
conv_4_227665:P
fc_1_227670:
∞	†
fc_1_227672:	†
fc_2_227675:
ј†
fc_2_227677:	†!
output_227682:
†Г

output_227684:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallу
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_227645conv_1_227647*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_227310а
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_1_layer_call_and_return_conditional_losses_227320М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_227651conv_2_227653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_227333а
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_2_layer_call_and_return_conditional_losses_227343М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_227657conv_3_227659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_3_layer_call_and_return_conditional_losses_227356а
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_3_layer_call_and_return_conditional_losses_227366М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_227663conv_4_227665*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_4_layer_call_and_return_conditional_losses_227379я
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_227391„
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227399А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_227670fc_1_227672*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_227411А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_227675fc_2_227677*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_227427э
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_add_1_layer_call_and_return_conditional_losses_227439№
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_227446Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_227682output_227684*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_227459w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
©
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
•
R
&__inference_add_1_layer_call_fn_228271
inputs_0
inputs_1
identityљ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_add_1_layer_call_and_return_conditional_losses_227439a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:R N
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs/1
–
d
H__inference_activation_1_layer_call_and_return_conditional_losses_227446

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€†[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
÷D
љ

C__inference_model_1_layer_call_and_return_conditional_losses_228005

inputs?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:(4
&conv_2_biasadd_readvariableop_resource:(?
%conv_3_conv2d_readvariableop_resource:(<4
&conv_3_biasadd_readvariableop_resource:<?
%conv_4_conv2d_readvariableop_resource:<P4
&conv_4_biasadd_readvariableop_resource:P7
#fc_1_matmul_readvariableop_resource:
∞	†3
$fc_1_biasadd_readvariableop_resource:	†7
#fc_2_matmul_readvariableop_resource:
ј†3
$fc_2_biasadd_readvariableop_resource:	†9
%output_matmul_readvariableop_resource:
†Г
5
&output_biasadd_readvariableop_resource:	Г

identityИҐconv_1/BiasAdd/ReadVariableOpҐconv_1/Conv2D/ReadVariableOpҐconv_2/BiasAdd/ReadVariableOpҐconv_2/Conv2D/ReadVariableOpҐconv_3/BiasAdd/ReadVariableOpҐconv_3/Conv2D/ReadVariableOpҐconv_4/BiasAdd/ReadVariableOpҐconv_4/Conv2D/ReadVariableOpҐfc_1/BiasAdd/ReadVariableOpҐfc_1/MatMul/ReadVariableOpҐfc_2/BiasAdd/ReadVariableOpҐfc_2/MatMul/ReadVariableOpҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOpК
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0®
conv_1/Conv2DConv2Dinputs$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
А
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,f
conv_1/ReluReluconv_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,°
pool_1/MaxPoolMaxPoolconv_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
К
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0є
conv_2/Conv2DConv2Dpool_1/MaxPool:output:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
А
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Т
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(f
conv_2/ReluReluconv_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(°
pool_2/MaxPoolMaxPoolconv_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
К
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0є
conv_3/Conv2DConv2Dpool_2/MaxPool:output:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
А
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0Т
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<f
conv_3/ReluReluconv_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<°
pool_3/MaxPoolMaxPoolconv_3/Relu:activations:0*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
К
conv_4/Conv2D/ReadVariableOpReadVariableOp%conv_4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0є
conv_4/Conv2DConv2Dpool_3/MaxPool:output:0$conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
А
conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Т
conv_4/BiasAddBiasAddconv_4/Conv2D:output:0%conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€Pf
conv_4/ReluReluconv_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€P`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Д
flatten_2/ReshapeReshapeconv_4/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  В
flatten_1/ReshapeReshapepool_3/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	А
fc_1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0И
fc_1/MatMulMatMulflatten_1/Reshape:output:0"fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†}
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0Ж
fc_1/BiasAddBiasAddfc_1/MatMul:product:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†А
fc_2/MatMul/ReadVariableOpReadVariableOp#fc_2_matmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0И
fc_2/MatMulMatMulflatten_2/Reshape:output:0"fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†}
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0Ж
fc_2/BiasAddBiasAddfc_2/MatMul:product:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
	add_1/addAddV2fc_1/BiasAdd:output:0fc_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€†[
activation_1/ReluReluadd_1/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Д
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0С
output/MatMulMatMulactivation_1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
Б
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0М
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
e
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
h
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
ч
NoOpNoOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^conv_4/BiasAdd/ReadVariableOp^conv_4/Conv2D/ReadVariableOp^fc_1/BiasAdd/ReadVariableOp^fc_1/MatMul/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp^fc_2/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2>
conv_4/BiasAdd/ReadVariableOpconv_4/BiasAdd/ReadVariableOp2<
conv_4/Conv2D/ReadVariableOpconv_4/Conv2D/ReadVariableOp2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp28
fc_1/MatMul/ReadVariableOpfc_1/MatMul/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp28
fc_2/MatMul/ReadVariableOpfc_2/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
ќ	
ф
@__inference_fc_2_layer_call_and_return_conditional_losses_228265

inputs2
matmul_readvariableop_resource:
ј†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
ќ	
ф
@__inference_fc_2_layer_call_and_return_conditional_losses_227427

inputs2
matmul_readvariableop_resource:
ј†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
і
F
*__inference_flatten_2_layer_call_fn_228221

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_227391a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
Љ
C
'__inference_pool_3_layer_call_fn_228175

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_3_layer_call_and_return_conditional_losses_227366h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
<:W S
/
_output_shapes
:€€€€€€€€€
<
 
_user_specified_nameinputs
В
ы
B__inference_conv_1_layer_call_and_return_conditional_losses_228085

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
В
ы
B__inference_conv_4_layer_call_and_return_conditional_losses_228205

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€Pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
ƒ
m
A__inference_add_1_layer_call_and_return_conditional_losses_228277
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:€€€€€€€€€†P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:R N
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs/1
В
ы
B__inference_conv_1_layer_call_and_return_conditional_losses_227310

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
ƒ
Х
%__inference_fc_2_layer_call_fn_228255

inputs
unknown:
ј†
	unknown_0:	†
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_227427p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
ƒ
Х
%__inference_fc_1_layer_call_fn_228236

inputs
unknown:
∞	†
	unknown_0:	†
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_227411p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
В
ы
B__inference_conv_3_layer_call_and_return_conditional_losses_228165

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
і
F
*__inference_flatten_1_layer_call_fn_228210

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227399a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
©
C
'__inference_pool_3_layer_call_fn_228170

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_3_layer_call_and_return_conditional_losses_227289Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ь
Е
(__inference_model_1_layer_call_fn_227912

inputs!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_227466p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
ь
Е
(__inference_model_1_layer_call_fn_227945

inputs!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_227688p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
ђ+
ц
__inference__traced_save_228384
file_prefix,
(savev2_conv_1_kernel_read_readvariableop*
&savev2_conv_1_bias_read_readvariableop,
(savev2_conv_2_kernel_read_readvariableop*
&savev2_conv_2_bias_read_readvariableop,
(savev2_conv_3_kernel_read_readvariableop*
&savev2_conv_3_bias_read_readvariableop,
(savev2_conv_4_kernel_read_readvariableop*
&savev2_conv_4_bias_read_readvariableop*
&savev2_fc_1_kernel_read_readvariableop(
$savev2_fc_1_bias_read_readvariableop*
&savev2_fc_2_kernel_read_readvariableop(
$savev2_fc_2_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: д
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Н
valueГBАB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHУ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B Д
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv_1_kernel_read_readvariableop&savev2_conv_1_bias_read_readvariableop(savev2_conv_2_kernel_read_readvariableop&savev2_conv_2_bias_read_readvariableop(savev2_conv_3_kernel_read_readvariableop&savev2_conv_3_bias_read_readvariableop(savev2_conv_4_kernel_read_readvariableop&savev2_conv_4_bias_read_readvariableop&savev2_fc_1_kernel_read_readvariableop$savev2_fc_1_bias_read_readvariableop&savev2_fc_2_kernel_read_readvariableop$savev2_fc_2_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *!
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ї
_input_shapes®
•: :::(:(:(<:<:<P:P:
∞	†:†:
ј†:†:
†Г
:Г
: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:(<: 

_output_shapes
:<:,(
&
_output_shapes
:<P: 

_output_shapes
:P:&	"
 
_output_shapes
:
∞	†:!


_output_shapes	
:†:&"
 
_output_shapes
:
ј†:!

_output_shapes	
:†:&"
 
_output_shapes
:
†Г
:!

_output_shapes	
:Г
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
«
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_227399

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
м7
Ч
C__inference_model_1_layer_call_and_return_conditional_losses_227844	
input'
conv_1_227801:
conv_1_227803:'
conv_2_227807:(
conv_2_227809:('
conv_3_227813:(<
conv_3_227815:<'
conv_4_227819:<P
conv_4_227821:P
fc_1_227826:
∞	†
fc_1_227828:	†
fc_2_227831:
ј†
fc_2_227833:	†!
output_227838:
†Г

output_227840:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallт
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_227801conv_1_227803*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_227310а
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_1_layer_call_and_return_conditional_losses_227320М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_227807conv_2_227809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_227333а
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_2_layer_call_and_return_conditional_losses_227343М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_227813conv_3_227815*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_3_layer_call_and_return_conditional_losses_227356а
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_3_layer_call_and_return_conditional_losses_227366М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_227819conv_4_227821*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_4_layer_call_and_return_conditional_losses_227379я
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_227391„
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227399А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_227826fc_1_227828*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_227411А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_227831fc_2_227833*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_227427э
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_add_1_layer_call_and_return_conditional_losses_227439№
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_227446Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_227838output_227840*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_227459w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
©
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
В
ы
B__inference_conv_2_layer_call_and_return_conditional_losses_228125

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ю
^
B__inference_pool_2_layer_call_and_return_conditional_losses_227343

inputs
identityЗ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€
("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€(:W S
/
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
Љ
k
A__inference_add_1_layer_call_and_return_conditional_losses_227439

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:€€€€€€€€€†P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
К
^
B__inference_pool_1_layer_call_and_return_conditional_losses_228100

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ю
^
B__inference_pool_3_layer_call_and_return_conditional_losses_227366

inputs
identityЗ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
<:W S
/
_output_shapes
:€€€€€€€€€
<
 
_user_specified_nameinputs
В
ы
B__inference_conv_4_layer_call_and_return_conditional_losses_227379

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€Pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
Ю
^
B__inference_pool_3_layer_call_and_return_conditional_losses_228185

inputs
identityЗ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
<:W S
/
_output_shapes
:€€€€€€€€€
<
 
_user_specified_nameinputs
Ю
^
B__inference_pool_2_layer_call_and_return_conditional_losses_228145

inputs
identityЗ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€
("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€(:W S
/
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
–
d
H__inference_activation_1_layer_call_and_return_conditional_losses_228287

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€†[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
ђ
I
-__inference_activation_1_layer_call_fn_228282

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_227446a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
™

ц
B__inference_output_layer_call_and_return_conditional_losses_228307

inputs2
matmul_readvariableop_resource:
†Г
.
biasadd_readvariableop_resource:	Г

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
В
ы
B__inference_conv_3_layer_call_and_return_conditional_losses_227356

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
К
^
B__inference_pool_2_layer_call_and_return_conditional_losses_228140

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
м7
Ч
C__inference_model_1_layer_call_and_return_conditional_losses_227798	
input'
conv_1_227755:
conv_1_227757:'
conv_2_227761:(
conv_2_227763:('
conv_3_227767:(<
conv_3_227769:<'
conv_4_227773:<P
conv_4_227775:P
fc_1_227780:
∞	†
fc_1_227782:	†
fc_2_227785:
ј†
fc_2_227787:	†!
output_227792:
†Г

output_227794:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallт
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_227755conv_1_227757*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_227310а
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_1_layer_call_and_return_conditional_losses_227320М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_227761conv_2_227763*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_227333а
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_2_layer_call_and_return_conditional_losses_227343М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_227767conv_3_227769*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_3_layer_call_and_return_conditional_losses_227356а
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_3_layer_call_and_return_conditional_losses_227366М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_227773conv_4_227775*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_4_layer_call_and_return_conditional_losses_227379я
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_227391„
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227399А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_227780fc_1_227782*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_227411А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_227785fc_2_227787*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_227427э
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_add_1_layer_call_and_return_conditional_losses_227439№
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_227446Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_227792output_227794*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_227459w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
©
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
Љ
C
'__inference_pool_2_layer_call_fn_228135

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_pool_2_layer_call_and_return_conditional_losses_227343h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€
("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€(:W S
/
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
«
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_228216

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
В
ы
B__inference_conv_2_layer_call_and_return_conditional_losses_227333

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й
Ь
'__inference_conv_1_layer_call_fn_228074

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_227310w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
щ
Д
(__inference_model_1_layer_call_fn_227497	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_227466p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
й
Ь
'__inference_conv_4_layer_call_fn_228194

inputs!
unknown:<P
	unknown_0:P
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv_4_layer_call_and_return_conditional_losses_227379w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
«
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_228227

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ѓ
serving_defaultЪ
?
input6
serving_default_input:0€€€€€€€€€7/;
output1
StatefulPartitionedCall:0€€€€€€€€€Г
tensorflow/serving/predict:за
д
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
≤__call__
+≥&call_and_return_all_conditional_losses
і_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
љ

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
	variables
trainable_variables
regularization_losses
	keras_api
Ј__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
І
&	variables
'trainable_variables
(regularization_losses
)	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
љ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
0	variables
1trainable_variables
2regularization_losses
3	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses"
_tf_keras_layer
І
:	variables
;trainable_variables
<regularization_losses
=	keras_api
√__call__
+ƒ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
>	variables
?trainable_variables
@regularization_losses
A	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
«__call__
+»&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
…__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
І
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
Ћ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
Ж
0
1
 2
!3
*4
+5
46
57
B8
C9
H10
I11
V12
W13"
trackable_list_wrapper
Ж
0
1
 2
!3
*4
+5
46
57
B8
C9
H10
I11
V12
W13"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
≤__call__
і_default_save_signature
+≥&call_and_return_all_conditional_losses
'≥"call_and_return_conditional_losses"
_generic_user_object
-
—serving_default"
signature_map
':%2conv_1/kernel
:2conv_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
Ј__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
':%(2conv_2/kernel
:(2conv_2/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
"	variables
#trainable_variables
$regularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
&	variables
'trainable_variables
(regularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
':%(<2conv_3/kernel
:<2conv_3/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
,	variables
-trainable_variables
.regularization_losses
љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
0	variables
1trainable_variables
2regularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
':%<P2conv_4/kernel
:P2conv_4/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
і
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
6	variables
7trainable_variables
8regularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
:	variables
;trainable_variables
<regularization_losses
√__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
>	variables
?trainable_variables
@regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
:
∞	†2fc_1/kernel
:†2	fc_1/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
«__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
:
ј†2fc_2/kernel
:†2	fc_2/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
Ћ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
R	variables
Strainable_variables
Tregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
!:
†Г
2output/kernel
:Г
2output/bias
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
ѕ__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
І0
®1"
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
R

©total

™count
Ђ	variables
ђ	keras_api"
_tf_keras_metric
c

≠total

Ѓcount
ѓ
_fn_kwargs
∞	variables
±	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
©0
™1"
trackable_list_wrapper
.
Ђ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
≠0
Ѓ1"
trackable_list_wrapper
.
∞	variables"
_generic_user_object
о2л
(__inference_model_1_layer_call_fn_227497
(__inference_model_1_layer_call_fn_227912
(__inference_model_1_layer_call_fn_227945
(__inference_model_1_layer_call_fn_227752ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Џ2„
C__inference_model_1_layer_call_and_return_conditional_losses_228005
C__inference_model_1_layer_call_and_return_conditional_losses_228065
C__inference_model_1_layer_call_and_return_conditional_losses_227798
C__inference_model_1_layer_call_and_return_conditional_losses_227844ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 B«
!__inference__wrapped_model_227256input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv_1_layer_call_fn_228074Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_conv_1_layer_call_and_return_conditional_losses_228085Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъ2ч
'__inference_pool_1_layer_call_fn_228090
'__inference_pool_1_layer_call_fn_228095Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∞2≠
B__inference_pool_1_layer_call_and_return_conditional_losses_228100
B__inference_pool_1_layer_call_and_return_conditional_losses_228105Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv_2_layer_call_fn_228114Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_conv_2_layer_call_and_return_conditional_losses_228125Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъ2ч
'__inference_pool_2_layer_call_fn_228130
'__inference_pool_2_layer_call_fn_228135Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∞2≠
B__inference_pool_2_layer_call_and_return_conditional_losses_228140
B__inference_pool_2_layer_call_and_return_conditional_losses_228145Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv_3_layer_call_fn_228154Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_conv_3_layer_call_and_return_conditional_losses_228165Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъ2ч
'__inference_pool_3_layer_call_fn_228170
'__inference_pool_3_layer_call_fn_228175Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∞2≠
B__inference_pool_3_layer_call_and_return_conditional_losses_228180
B__inference_pool_3_layer_call_and_return_conditional_losses_228185Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv_4_layer_call_fn_228194Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_conv_4_layer_call_and_return_conditional_losses_228205Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_flatten_1_layer_call_fn_228210Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_flatten_1_layer_call_and_return_conditional_losses_228216Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_flatten_2_layer_call_fn_228221Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_flatten_2_layer_call_and_return_conditional_losses_228227Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѕ2ћ
%__inference_fc_1_layer_call_fn_228236Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
к2з
@__inference_fc_1_layer_call_and_return_conditional_losses_228246Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѕ2ћ
%__inference_fc_2_layer_call_fn_228255Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
к2з
@__inference_fc_2_layer_call_and_return_conditional_losses_228265Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–2Ќ
&__inference_add_1_layer_call_fn_228271Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
л2и
A__inference_add_1_layer_call_and_return_conditional_losses_228277Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_activation_1_layer_call_fn_228282Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_activation_1_layer_call_and_return_conditional_losses_228287Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_output_layer_call_fn_228296Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_output_layer_call_and_return_conditional_losses_228307Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
…B∆
$__inference_signature_wrapper_227879input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Я
!__inference__wrapped_model_227256z !*+45BCHIVW6Ґ3
,Ґ)
'К$
input€€€€€€€€€7/
™ "0™-
+
output!К
output€€€€€€€€€Г
¶
H__inference_activation_1_layer_call_and_return_conditional_losses_228287Z0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "&Ґ#
К
0€€€€€€€€€†
Ъ ~
-__inference_activation_1_layer_call_fn_228282M0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "К€€€€€€€€€†ћ
A__inference_add_1_layer_call_and_return_conditional_losses_228277Ж\ҐY
RҐO
MЪJ
#К 
inputs/0€€€€€€€€€†
#К 
inputs/1€€€€€€€€€†
™ "&Ґ#
К
0€€€€€€€€€†
Ъ £
&__inference_add_1_layer_call_fn_228271y\ҐY
RҐO
MЪJ
#К 
inputs/0€€€€€€€€€†
#К 
inputs/1€€€€€€€€€†
™ "К€€€€€€€€€†≤
B__inference_conv_1_layer_call_and_return_conditional_losses_228085l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€7/
™ "-Ґ*
#К 
0€€€€€€€€€4,
Ъ К
'__inference_conv_1_layer_call_fn_228074_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€7/
™ " К€€€€€€€€€4,≤
B__inference_conv_2_layer_call_and_return_conditional_losses_228125l !7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€(
Ъ К
'__inference_conv_2_layer_call_fn_228114_ !7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€(≤
B__inference_conv_3_layer_call_and_return_conditional_losses_228165l*+7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
(
™ "-Ґ*
#К 
0€€€€€€€€€
<
Ъ К
'__inference_conv_3_layer_call_fn_228154_*+7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
(
™ " К€€€€€€€€€
<≤
B__inference_conv_4_layer_call_and_return_conditional_losses_228205l457Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "-Ґ*
#К 
0€€€€€€€€€P
Ъ К
'__inference_conv_4_layer_call_fn_228194_457Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ " К€€€€€€€€€PҐ
@__inference_fc_1_layer_call_and_return_conditional_losses_228246^BC0Ґ-
&Ґ#
!К
inputs€€€€€€€€€∞	
™ "&Ґ#
К
0€€€€€€€€€†
Ъ z
%__inference_fc_1_layer_call_fn_228236QBC0Ґ-
&Ґ#
!К
inputs€€€€€€€€€∞	
™ "К€€€€€€€€€†Ґ
@__inference_fc_2_layer_call_and_return_conditional_losses_228265^HI0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "&Ґ#
К
0€€€€€€€€€†
Ъ z
%__inference_fc_2_layer_call_fn_228255QHI0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "К€€€€€€€€€†™
E__inference_flatten_1_layer_call_and_return_conditional_losses_228216a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "&Ґ#
К
0€€€€€€€€€∞	
Ъ В
*__inference_flatten_1_layer_call_fn_228210T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "К€€€€€€€€€∞	™
E__inference_flatten_2_layer_call_and_return_conditional_losses_228227a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€P
™ "&Ґ#
К
0€€€€€€€€€ј
Ъ В
*__inference_flatten_2_layer_call_fn_228221T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€P
™ "К€€€€€€€€€јњ
C__inference_model_1_layer_call_and_return_conditional_losses_227798x !*+45BCHIVW>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p 

 
™ "&Ґ#
К
0€€€€€€€€€Г

Ъ њ
C__inference_model_1_layer_call_and_return_conditional_losses_227844x !*+45BCHIVW>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p

 
™ "&Ґ#
К
0€€€€€€€€€Г

Ъ ј
C__inference_model_1_layer_call_and_return_conditional_losses_228005y !*+45BCHIVW?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€7/
p 

 
™ "&Ґ#
К
0€€€€€€€€€Г

Ъ ј
C__inference_model_1_layer_call_and_return_conditional_losses_228065y !*+45BCHIVW?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€7/
p

 
™ "&Ґ#
К
0€€€€€€€€€Г

Ъ Ч
(__inference_model_1_layer_call_fn_227497k !*+45BCHIVW>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p 

 
™ "К€€€€€€€€€Г
Ч
(__inference_model_1_layer_call_fn_227752k !*+45BCHIVW>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p

 
™ "К€€€€€€€€€Г
Ш
(__inference_model_1_layer_call_fn_227912l !*+45BCHIVW?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€7/
p 

 
™ "К€€€€€€€€€Г
Ш
(__inference_model_1_layer_call_fn_227945l !*+45BCHIVW?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€7/
p

 
™ "К€€€€€€€€€Г
§
B__inference_output_layer_call_and_return_conditional_losses_228307^VW0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "&Ґ#
К
0€€€€€€€€€Г

Ъ |
'__inference_output_layer_call_fn_228296QVW0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "К€€€€€€€€€Г
е
B__inference_pool_1_layer_call_and_return_conditional_losses_228100ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѓ
B__inference_pool_1_layer_call_and_return_conditional_losses_228105h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€4,
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ љ
'__inference_pool_1_layer_call_fn_228090СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
'__inference_pool_1_layer_call_fn_228095[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€4,
™ " К€€€€€€€€€е
B__inference_pool_2_layer_call_and_return_conditional_losses_228140ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѓ
B__inference_pool_2_layer_call_and_return_conditional_losses_228145h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(
™ "-Ґ*
#К 
0€€€€€€€€€
(
Ъ љ
'__inference_pool_2_layer_call_fn_228130СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
'__inference_pool_2_layer_call_fn_228135[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(
™ " К€€€€€€€€€
(е
B__inference_pool_3_layer_call_and_return_conditional_losses_228180ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѓ
B__inference_pool_3_layer_call_and_return_conditional_losses_228185h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
<
™ "-Ґ*
#К 
0€€€€€€€€€<
Ъ љ
'__inference_pool_3_layer_call_fn_228170СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
'__inference_pool_3_layer_call_fn_228175[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
<
™ " К€€€€€€€€€<ђ
$__inference_signature_wrapper_227879Г !*+45BCHIVW?Ґ<
Ґ 
5™2
0
input'К$
input€€€€€€€€€7/"0™-
+
output!К
output€€€€€€€€€Г
