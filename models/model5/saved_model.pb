��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758�
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
�
Adam/v/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_19/bias
y
(Adam/v/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_19/bias
y
(Adam/m/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_19/kernel
�
*Adam/v/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/kernel*
_output_shapes

:*
dtype0
�
Adam/m/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_19/kernel
�
*Adam/m/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/kernel*
_output_shapes

:*
dtype0
�
%Adam/v/dense_16_nodrop_leakyrelu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/v/dense_16_nodrop_leakyrelu/bias
�
9Adam/v/dense_16_nodrop_leakyrelu/bias/Read/ReadVariableOpReadVariableOp%Adam/v/dense_16_nodrop_leakyrelu/bias*
_output_shapes
:*
dtype0
�
%Adam/m/dense_16_nodrop_leakyrelu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/m/dense_16_nodrop_leakyrelu/bias
�
9Adam/m/dense_16_nodrop_leakyrelu/bias/Read/ReadVariableOpReadVariableOp%Adam/m/dense_16_nodrop_leakyrelu/bias*
_output_shapes
:*
dtype0
�
'Adam/v/dense_16_nodrop_leakyrelu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'Adam/v/dense_16_nodrop_leakyrelu/kernel
�
;Adam/v/dense_16_nodrop_leakyrelu/kernel/Read/ReadVariableOpReadVariableOp'Adam/v/dense_16_nodrop_leakyrelu/kernel*
_output_shapes

:@*
dtype0
�
'Adam/m/dense_16_nodrop_leakyrelu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'Adam/m/dense_16_nodrop_leakyrelu/kernel
�
;Adam/m/dense_16_nodrop_leakyrelu/kernel/Read/ReadVariableOpReadVariableOp'Adam/m/dense_16_nodrop_leakyrelu/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/dense_64_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/v/dense_64_relu/bias
�
-Adam/v/dense_64_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_64_relu/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_64_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/m/dense_64_relu/bias
�
-Adam/m/dense_64_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_64_relu/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_64_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameAdam/v/dense_64_relu/kernel
�
/Adam/v/dense_64_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_64_relu/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_64_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameAdam/m/dense_64_relu/kernel
�
/Adam/m/dense_64_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_64_relu/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/dense_128_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/v/dense_128_relu/bias
�
.Adam/v/dense_128_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_128_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_128_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/m/dense_128_relu/bias
�
.Adam/m/dense_128_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_128_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_128_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/v/dense_128_relu/kernel
�
0Adam/v/dense_128_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_128_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_128_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/m/dense_128_relu/kernel
�
0Adam/m/dense_128_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_128_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_256_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/v/dense_256_relu/bias
�
.Adam/v/dense_256_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_256_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_256_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/m/dense_256_relu/bias
�
.Adam/m/dense_256_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_256_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_256_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/v/dense_256_relu/kernel
�
0Adam/v/dense_256_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_256_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_256_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/m/dense_256_relu/kernel
�
0Adam/m/dense_256_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_256_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_512_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/v/dense_512_relu/bias
�
.Adam/v/dense_512_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_512_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_512_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/m/dense_512_relu/bias
�
.Adam/m/dense_512_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_512_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_512_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/v/dense_512_relu/kernel
�
0Adam/v/dense_512_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_512_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_512_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/m/dense_512_relu/kernel
�
0Adam/m/dense_512_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_512_relu/kernel* 
_output_shapes
:
��*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:*
dtype0
�
dense_16_nodrop_leakyrelu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name dense_16_nodrop_leakyrelu/bias
�
2dense_16_nodrop_leakyrelu/bias/Read/ReadVariableOpReadVariableOpdense_16_nodrop_leakyrelu/bias*
_output_shapes
:*
dtype0
�
 dense_16_nodrop_leakyrelu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" dense_16_nodrop_leakyrelu/kernel
�
4dense_16_nodrop_leakyrelu/kernel/Read/ReadVariableOpReadVariableOp dense_16_nodrop_leakyrelu/kernel*
_output_shapes

:@*
dtype0
|
dense_64_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namedense_64_relu/bias
u
&dense_64_relu/bias/Read/ReadVariableOpReadVariableOpdense_64_relu/bias*
_output_shapes
:@*
dtype0
�
dense_64_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*%
shared_namedense_64_relu/kernel
~
(dense_64_relu/kernel/Read/ReadVariableOpReadVariableOpdense_64_relu/kernel*
_output_shapes
:	�@*
dtype0

dense_128_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namedense_128_relu/bias
x
'dense_128_relu/bias/Read/ReadVariableOpReadVariableOpdense_128_relu/bias*
_output_shapes	
:�*
dtype0
�
dense_128_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namedense_128_relu/kernel
�
)dense_128_relu/kernel/Read/ReadVariableOpReadVariableOpdense_128_relu/kernel* 
_output_shapes
:
��*
dtype0

dense_256_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namedense_256_relu/bias
x
'dense_256_relu/bias/Read/ReadVariableOpReadVariableOpdense_256_relu/bias*
_output_shapes	
:�*
dtype0
�
dense_256_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namedense_256_relu/kernel
�
)dense_256_relu/kernel/Read/ReadVariableOpReadVariableOpdense_256_relu/kernel* 
_output_shapes
:
��*
dtype0

dense_512_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namedense_512_relu/bias
x
'dense_512_relu/bias/Read/ReadVariableOpReadVariableOpdense_512_relu/bias*
_output_shapes	
:�*
dtype0
�
dense_512_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namedense_512_relu/kernel
�
)dense_512_relu/kernel/Read/ReadVariableOpReadVariableOpdense_512_relu/kernel* 
_output_shapes
:
��*
dtype0
�
serving_default_input_embeddingPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_embeddingdense_512_relu/kerneldense_512_relu/biasdense_256_relu/kerneldense_256_relu/biasdense_128_relu/kerneldense_128_relu/biasdense_64_relu/kerneldense_64_relu/bias dense_16_nodrop_leakyrelu/kerneldense_16_nodrop_leakyrelu/biasdense_19/kerneldense_19/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1586521

NoOpNoOp
�^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�]
value�]B�] B�]
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator* 
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias*
Z
0
1
)2
*3
84
95
G6
H7
V8
W9
^10
_11*
Z
0
1
)2
*3
84
95
G6
H7
V8
W9
^10
_11*
* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
etrace_0
ftrace_1
gtrace_2
htrace_3* 
6
itrace_0
jtrace_1
ktrace_2
ltrace_3* 
* 
�
m
_variables
n_iterations
o_learning_rate
p_index_dict
q
_momentums
r_velocities
s_update_step_xla*

tserving_default* 

0
1*

0
1*
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ztrace_0* 

{trace_0* 
e_
VARIABLE_VALUEdense_512_relu/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdense_512_relu/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

)0
*1*

)0
*1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEdense_256_relu/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdense_256_relu/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

80
91*

80
91*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEdense_128_relu/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdense_128_relu/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

G0
H1*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdense_64_relu/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_64_relu/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

V0
W1*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
pj
VARIABLE_VALUE dense_16_nodrop_leakyrelu/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEdense_16_nodrop_leakyrelu/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

^0
_1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
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
9*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
n0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
ga
VARIABLE_VALUEAdam/m/dense_512_relu/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_512_relu/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_512_relu/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_512_relu/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dense_256_relu/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_256_relu/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_256_relu/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_256_relu/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dense_128_relu/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/dense_128_relu/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dense_128_relu/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/dense_128_relu/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dense_64_relu/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_64_relu/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_64_relu/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_64_relu/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'Adam/m/dense_16_nodrop_leakyrelu/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'Adam/v/dense_16_nodrop_leakyrelu/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/m/dense_16_nodrop_leakyrelu/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/v/dense_16_nodrop_leakyrelu/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_19/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_19/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_19/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_19/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_512_relu/kerneldense_512_relu/biasdense_256_relu/kerneldense_256_relu/biasdense_128_relu/kerneldense_128_relu/biasdense_64_relu/kerneldense_64_relu/bias dense_16_nodrop_leakyrelu/kerneldense_16_nodrop_leakyrelu/biasdense_19/kerneldense_19/bias	iterationlearning_rateAdam/m/dense_512_relu/kernelAdam/v/dense_512_relu/kernelAdam/m/dense_512_relu/biasAdam/v/dense_512_relu/biasAdam/m/dense_256_relu/kernelAdam/v/dense_256_relu/kernelAdam/m/dense_256_relu/biasAdam/v/dense_256_relu/biasAdam/m/dense_128_relu/kernelAdam/v/dense_128_relu/kernelAdam/m/dense_128_relu/biasAdam/v/dense_128_relu/biasAdam/m/dense_64_relu/kernelAdam/v/dense_64_relu/kernelAdam/m/dense_64_relu/biasAdam/v/dense_64_relu/bias'Adam/m/dense_16_nodrop_leakyrelu/kernel'Adam/v/dense_16_nodrop_leakyrelu/kernel%Adam/m/dense_16_nodrop_leakyrelu/bias%Adam/v/dense_16_nodrop_leakyrelu/biasAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biastotal_1count_1totalcountConst*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_1587210
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_512_relu/kerneldense_512_relu/biasdense_256_relu/kerneldense_256_relu/biasdense_128_relu/kerneldense_128_relu/biasdense_64_relu/kerneldense_64_relu/bias dense_16_nodrop_leakyrelu/kerneldense_16_nodrop_leakyrelu/biasdense_19/kerneldense_19/bias	iterationlearning_rateAdam/m/dense_512_relu/kernelAdam/v/dense_512_relu/kernelAdam/m/dense_512_relu/biasAdam/v/dense_512_relu/biasAdam/m/dense_256_relu/kernelAdam/v/dense_256_relu/kernelAdam/m/dense_256_relu/biasAdam/v/dense_256_relu/biasAdam/m/dense_128_relu/kernelAdam/v/dense_128_relu/kernelAdam/m/dense_128_relu/biasAdam/v/dense_128_relu/biasAdam/m/dense_64_relu/kernelAdam/v/dense_64_relu/kernelAdam/m/dense_64_relu/biasAdam/v/dense_64_relu/bias'Adam/m/dense_16_nodrop_leakyrelu/kernel'Adam/v/dense_16_nodrop_leakyrelu/kernel%Adam/m/dense_16_nodrop_leakyrelu/bias%Adam/v/dense_16_nodrop_leakyrelu/biasAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biastotal_1count_1totalcount*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_1587346��

�
e
,__inference_dropout_28_layer_call_fn_1586779

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586034p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_1586521
input_embedding
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_embeddingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1585970o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�

�
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586109

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586774

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_27_layer_call_fn_1586732

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586003p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�5
�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586232

inputs*
dense_512_relu_1586197:
��%
dense_512_relu_1586199:	�*
dense_256_relu_1586203:
��%
dense_256_relu_1586205:	�*
dense_128_relu_1586209:
��%
dense_128_relu_1586211:	�(
dense_64_relu_1586215:	�@#
dense_64_relu_1586217:@3
!dense_16_nodrop_leakyrelu_1586221:@/
!dense_16_nodrop_leakyrelu_1586223:"
dense_19_1586226:
dense_19_1586228:
identity��&dense_128_relu/StatefulPartitionedCall�1dense_16_nodrop_leakyrelu/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�"dropout_27/StatefulPartitionedCall�"dropout_28/StatefulPartitionedCall�"dropout_29/StatefulPartitionedCall�"dropout_30/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinputsdense_512_relu_1586197dense_512_relu_1586199*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1585985�
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586003�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_256_relu_1586203dense_256_relu_1586205*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586016�
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586034�
&dense_128_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0dense_128_relu_1586209dense_128_relu_1586211*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586047�
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall/dense_128_relu/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586065�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_64_relu_1586215dense_64_relu_1586217*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586078�
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586096�
1dense_16_nodrop_leakyrelu/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0!dense_16_nodrop_leakyrelu_1586221!dense_16_nodrop_leakyrelu_1586223*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586109�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall:dense_16_nodrop_leakyrelu/StatefulPartitionedCall:output:0dense_19_1586226dense_19_1586228*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1586126x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^dense_128_relu/StatefulPartitionedCall2^dense_16_nodrop_leakyrelu/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2P
&dense_128_relu/StatefulPartitionedCall&dense_128_relu/StatefulPartitionedCall2f
1dense_16_nodrop_leakyrelu/StatefulPartitionedCall1dense_16_nodrop_leakyrelu/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586034

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586016

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586047

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_19_layer_call_and_return_conditional_losses_1586935

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586868

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�_
�

\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586657

inputsA
-dense_512_relu_matmul_readvariableop_resource:
��=
.dense_512_relu_biasadd_readvariableop_resource:	�A
-dense_256_relu_matmul_readvariableop_resource:
��=
.dense_256_relu_biasadd_readvariableop_resource:	�A
-dense_128_relu_matmul_readvariableop_resource:
��=
.dense_128_relu_biasadd_readvariableop_resource:	�?
,dense_64_relu_matmul_readvariableop_resource:	�@;
-dense_64_relu_biasadd_readvariableop_resource:@J
8dense_16_nodrop_leakyrelu_matmul_readvariableop_resource:@G
9dense_16_nodrop_leakyrelu_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:
identity��%dense_128_relu/BiasAdd/ReadVariableOp�$dense_128_relu/MatMul/ReadVariableOp�0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp�/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�%dense_256_relu/BiasAdd/ReadVariableOp�$dense_256_relu/MatMul/ReadVariableOp�%dense_512_relu/BiasAdd/ReadVariableOp�$dense_512_relu/MatMul/ReadVariableOp�$dense_64_relu/BiasAdd/ReadVariableOp�#dense_64_relu/MatMul/ReadVariableOp�
$dense_512_relu/MatMul/ReadVariableOpReadVariableOp-dense_512_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_512_relu/MatMulMatMulinputs,dense_512_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_512_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_512_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_512_relu/BiasAddBiasAdddense_512_relu/MatMul:product:0-dense_512_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_512_relu/ReluReludense_512_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_27/dropout/MulMul!dense_512_relu/Relu:activations:0!dropout_27/dropout/Const:output:0*
T0*(
_output_shapes
:����������w
dropout_27/dropout/ShapeShape!dense_512_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_27/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_27/dropout/SelectV2SelectV2#dropout_27/dropout/GreaterEqual:z:0dropout_27/dropout/Mul:z:0#dropout_27/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
$dense_256_relu/MatMul/ReadVariableOpReadVariableOp-dense_256_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_256_relu/MatMulMatMul$dropout_27/dropout/SelectV2:output:0,dense_256_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_256_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_256_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_256_relu/BiasAddBiasAdddense_256_relu/MatMul:product:0-dense_256_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_256_relu/ReluReludense_256_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_28/dropout/MulMul!dense_256_relu/Relu:activations:0!dropout_28/dropout/Const:output:0*
T0*(
_output_shapes
:����������w
dropout_28/dropout/ShapeShape!dense_256_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_28/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_28/dropout/SelectV2SelectV2#dropout_28/dropout/GreaterEqual:z:0dropout_28/dropout/Mul:z:0#dropout_28/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
$dense_128_relu/MatMul/ReadVariableOpReadVariableOp-dense_128_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_128_relu/MatMulMatMul$dropout_28/dropout/SelectV2:output:0,dense_128_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_128_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_128_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_128_relu/BiasAddBiasAdddense_128_relu/MatMul:product:0-dense_128_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_128_relu/ReluReludense_128_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_29/dropout/MulMul!dense_128_relu/Relu:activations:0!dropout_29/dropout/Const:output:0*
T0*(
_output_shapes
:����������w
dropout_29/dropout/ShapeShape!dense_128_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_29/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_29/dropout/SelectV2SelectV2#dropout_29/dropout/GreaterEqual:z:0dropout_29/dropout/Mul:z:0#dropout_29/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
#dense_64_relu/MatMul/ReadVariableOpReadVariableOp,dense_64_relu_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_64_relu/MatMulMatMul$dropout_29/dropout/SelectV2:output:0+dense_64_relu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$dense_64_relu/BiasAdd/ReadVariableOpReadVariableOp-dense_64_relu_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_64_relu/BiasAddBiasAdddense_64_relu/MatMul:product:0,dense_64_relu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
dense_64_relu/ReluReludense_64_relu/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_30/dropout/MulMul dense_64_relu/Relu:activations:0!dropout_30/dropout/Const:output:0*
T0*'
_output_shapes
:���������@v
dropout_30/dropout/ShapeShape dense_64_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_30/dropout/random_uniform/RandomUniformRandomUniform!dropout_30/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_30/dropout/GreaterEqualGreaterEqual8dropout_30/dropout/random_uniform/RandomUniform:output:0*dropout_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_30/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_30/dropout/SelectV2SelectV2#dropout_30/dropout/GreaterEqual:z:0dropout_30/dropout/Mul:z:0#dropout_30/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOpReadVariableOp8dense_16_nodrop_leakyrelu_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
 dense_16_nodrop_leakyrelu/MatMulMatMul$dropout_30/dropout/SelectV2:output:07dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOpReadVariableOp9dense_16_nodrop_leakyrelu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!dense_16_nodrop_leakyrelu/BiasAddBiasAdd*dense_16_nodrop_leakyrelu/MatMul:product:08dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_16_nodrop_leakyrelu/SigmoidSigmoid*dense_16_nodrop_leakyrelu/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_19/MatMulMatMul%dense_16_nodrop_leakyrelu/Sigmoid:y:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^dense_128_relu/BiasAdd/ReadVariableOp%^dense_128_relu/MatMul/ReadVariableOp1^dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp0^dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp&^dense_256_relu/BiasAdd/ReadVariableOp%^dense_256_relu/MatMul/ReadVariableOp&^dense_512_relu/BiasAdd/ReadVariableOp%^dense_512_relu/MatMul/ReadVariableOp%^dense_64_relu/BiasAdd/ReadVariableOp$^dense_64_relu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2N
%dense_128_relu/BiasAdd/ReadVariableOp%dense_128_relu/BiasAdd/ReadVariableOp2L
$dense_128_relu/MatMul/ReadVariableOp$dense_128_relu/MatMul/ReadVariableOp2d
0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp2b
/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2N
%dense_256_relu/BiasAdd/ReadVariableOp%dense_256_relu/BiasAdd/ReadVariableOp2L
$dense_256_relu/MatMul/ReadVariableOp$dense_256_relu/MatMul/ReadVariableOp2N
%dense_512_relu/BiasAdd/ReadVariableOp%dense_512_relu/BiasAdd/ReadVariableOp2L
$dense_512_relu/MatMul/ReadVariableOp$dense_512_relu/MatMul/ReadVariableOp2L
$dense_64_relu/BiasAdd/ReadVariableOp$dense_64_relu/BiasAdd/ReadVariableOp2J
#dense_64_relu/MatMul/ReadVariableOp#dense_64_relu/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�?
�

\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586707

inputsA
-dense_512_relu_matmul_readvariableop_resource:
��=
.dense_512_relu_biasadd_readvariableop_resource:	�A
-dense_256_relu_matmul_readvariableop_resource:
��=
.dense_256_relu_biasadd_readvariableop_resource:	�A
-dense_128_relu_matmul_readvariableop_resource:
��=
.dense_128_relu_biasadd_readvariableop_resource:	�?
,dense_64_relu_matmul_readvariableop_resource:	�@;
-dense_64_relu_biasadd_readvariableop_resource:@J
8dense_16_nodrop_leakyrelu_matmul_readvariableop_resource:@G
9dense_16_nodrop_leakyrelu_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:
identity��%dense_128_relu/BiasAdd/ReadVariableOp�$dense_128_relu/MatMul/ReadVariableOp�0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp�/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�%dense_256_relu/BiasAdd/ReadVariableOp�$dense_256_relu/MatMul/ReadVariableOp�%dense_512_relu/BiasAdd/ReadVariableOp�$dense_512_relu/MatMul/ReadVariableOp�$dense_64_relu/BiasAdd/ReadVariableOp�#dense_64_relu/MatMul/ReadVariableOp�
$dense_512_relu/MatMul/ReadVariableOpReadVariableOp-dense_512_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_512_relu/MatMulMatMulinputs,dense_512_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_512_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_512_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_512_relu/BiasAddBiasAdddense_512_relu/MatMul:product:0-dense_512_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_512_relu/ReluReludense_512_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������u
dropout_27/IdentityIdentity!dense_512_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
$dense_256_relu/MatMul/ReadVariableOpReadVariableOp-dense_256_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_256_relu/MatMulMatMuldropout_27/Identity:output:0,dense_256_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_256_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_256_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_256_relu/BiasAddBiasAdddense_256_relu/MatMul:product:0-dense_256_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_256_relu/ReluReludense_256_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������u
dropout_28/IdentityIdentity!dense_256_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
$dense_128_relu/MatMul/ReadVariableOpReadVariableOp-dense_128_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_128_relu/MatMulMatMuldropout_28/Identity:output:0,dense_128_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_128_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_128_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_128_relu/BiasAddBiasAdddense_128_relu/MatMul:product:0-dense_128_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_128_relu/ReluReludense_128_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������u
dropout_29/IdentityIdentity!dense_128_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
#dense_64_relu/MatMul/ReadVariableOpReadVariableOp,dense_64_relu_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_64_relu/MatMulMatMuldropout_29/Identity:output:0+dense_64_relu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$dense_64_relu/BiasAdd/ReadVariableOpReadVariableOp-dense_64_relu_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_64_relu/BiasAddBiasAdddense_64_relu/MatMul:product:0,dense_64_relu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
dense_64_relu/ReluReludense_64_relu/BiasAdd:output:0*
T0*'
_output_shapes
:���������@s
dropout_30/IdentityIdentity dense_64_relu/Relu:activations:0*
T0*'
_output_shapes
:���������@�
/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOpReadVariableOp8dense_16_nodrop_leakyrelu_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
 dense_16_nodrop_leakyrelu/MatMulMatMuldropout_30/Identity:output:07dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOpReadVariableOp9dense_16_nodrop_leakyrelu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!dense_16_nodrop_leakyrelu/BiasAddBiasAdd*dense_16_nodrop_leakyrelu/MatMul:product:08dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_16_nodrop_leakyrelu/SigmoidSigmoid*dense_16_nodrop_leakyrelu/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_19/MatMulMatMul%dense_16_nodrop_leakyrelu/Sigmoid:y:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^dense_128_relu/BiasAdd/ReadVariableOp%^dense_128_relu/MatMul/ReadVariableOp1^dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp0^dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp&^dense_256_relu/BiasAdd/ReadVariableOp%^dense_256_relu/MatMul/ReadVariableOp&^dense_512_relu/BiasAdd/ReadVariableOp%^dense_512_relu/MatMul/ReadVariableOp%^dense_64_relu/BiasAdd/ReadVariableOp$^dense_64_relu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2N
%dense_128_relu/BiasAdd/ReadVariableOp%dense_128_relu/BiasAdd/ReadVariableOp2L
$dense_128_relu/MatMul/ReadVariableOp$dense_128_relu/MatMul/ReadVariableOp2d
0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp0dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp2b
/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2N
%dense_256_relu/BiasAdd/ReadVariableOp%dense_256_relu/BiasAdd/ReadVariableOp2L
$dense_256_relu/MatMul/ReadVariableOp$dense_256_relu/MatMul/ReadVariableOp2N
%dense_512_relu/BiasAdd/ReadVariableOp%dense_512_relu/BiasAdd/ReadVariableOp2L
$dense_512_relu/MatMul/ReadVariableOp$dense_512_relu/MatMul/ReadVariableOp2L
$dense_64_relu/BiasAdd/ReadVariableOp$dense_64_relu/BiasAdd/ReadVariableOp2J
#dense_64_relu/MatMul/ReadVariableOp#dense_64_relu/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_19_layer_call_and_return_conditional_losses_1586126

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586078

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586550

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_28_layer_call_fn_1586784

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586156a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586915

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�/
�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586191
input_embedding*
dense_512_relu_1586136:
��%
dense_512_relu_1586138:	�*
dense_256_relu_1586147:
��%
dense_256_relu_1586149:	�*
dense_128_relu_1586158:
��%
dense_128_relu_1586160:	�(
dense_64_relu_1586169:	�@#
dense_64_relu_1586171:@3
!dense_16_nodrop_leakyrelu_1586180:@/
!dense_16_nodrop_leakyrelu_1586182:"
dense_19_1586185:
dense_19_1586187:
identity��&dense_128_relu/StatefulPartitionedCall�1dense_16_nodrop_leakyrelu/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinput_embeddingdense_512_relu_1586136dense_512_relu_1586138*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1585985�
dropout_27/PartitionedCallPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586145�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_256_relu_1586147dense_256_relu_1586149*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586016�
dropout_28/PartitionedCallPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586156�
&dense_128_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0dense_128_relu_1586158dense_128_relu_1586160*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586047�
dropout_29/PartitionedCallPartitionedCall/dense_128_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586167�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_64_relu_1586169dense_64_relu_1586171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586078�
dropout_30/PartitionedCallPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586178�
1dense_16_nodrop_leakyrelu/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0!dense_16_nodrop_leakyrelu_1586180!dense_16_nodrop_leakyrelu_1586182*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586109�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall:dense_16_nodrop_leakyrelu/StatefulPartitionedCall:output:0dense_19_1586185dense_19_1586187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1586126x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^dense_128_relu/StatefulPartitionedCall2^dense_16_nodrop_leakyrelu/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2P
&dense_128_relu/StatefulPartitionedCall&dense_128_relu/StatefulPartitionedCall2f
1dense_16_nodrop_leakyrelu/StatefulPartitionedCall1dense_16_nodrop_leakyrelu/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�
�
*__inference_dense_19_layer_call_fn_1586924

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1586126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586579

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586145

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_29_layer_call_fn_1586831

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586167a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_dense_256_relu_layer_call_fn_1586763

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586016p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_29_layer_call_fn_1586826

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586065p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586848

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_30_layer_call_fn_1586873

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586096o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586326
input_embedding
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_embeddingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
��
�'
 __inference__traced_save_1587210
file_prefix@
,read_disablecopyonread_dense_512_relu_kernel:
��;
,read_1_disablecopyonread_dense_512_relu_bias:	�B
.read_2_disablecopyonread_dense_256_relu_kernel:
��;
,read_3_disablecopyonread_dense_256_relu_bias:	�B
.read_4_disablecopyonread_dense_128_relu_kernel:
��;
,read_5_disablecopyonread_dense_128_relu_bias:	�@
-read_6_disablecopyonread_dense_64_relu_kernel:	�@9
+read_7_disablecopyonread_dense_64_relu_bias:@K
9read_8_disablecopyonread_dense_16_nodrop_leakyrelu_kernel:@E
7read_9_disablecopyonread_dense_16_nodrop_leakyrelu_bias:;
)read_10_disablecopyonread_dense_19_kernel:5
'read_11_disablecopyonread_dense_19_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: J
6read_14_disablecopyonread_adam_m_dense_512_relu_kernel:
��J
6read_15_disablecopyonread_adam_v_dense_512_relu_kernel:
��C
4read_16_disablecopyonread_adam_m_dense_512_relu_bias:	�C
4read_17_disablecopyonread_adam_v_dense_512_relu_bias:	�J
6read_18_disablecopyonread_adam_m_dense_256_relu_kernel:
��J
6read_19_disablecopyonread_adam_v_dense_256_relu_kernel:
��C
4read_20_disablecopyonread_adam_m_dense_256_relu_bias:	�C
4read_21_disablecopyonread_adam_v_dense_256_relu_bias:	�J
6read_22_disablecopyonread_adam_m_dense_128_relu_kernel:
��J
6read_23_disablecopyonread_adam_v_dense_128_relu_kernel:
��C
4read_24_disablecopyonread_adam_m_dense_128_relu_bias:	�C
4read_25_disablecopyonread_adam_v_dense_128_relu_bias:	�H
5read_26_disablecopyonread_adam_m_dense_64_relu_kernel:	�@H
5read_27_disablecopyonread_adam_v_dense_64_relu_kernel:	�@A
3read_28_disablecopyonread_adam_m_dense_64_relu_bias:@A
3read_29_disablecopyonread_adam_v_dense_64_relu_bias:@S
Aread_30_disablecopyonread_adam_m_dense_16_nodrop_leakyrelu_kernel:@S
Aread_31_disablecopyonread_adam_v_dense_16_nodrop_leakyrelu_kernel:@M
?read_32_disablecopyonread_adam_m_dense_16_nodrop_leakyrelu_bias:M
?read_33_disablecopyonread_adam_v_dense_16_nodrop_leakyrelu_bias:B
0read_34_disablecopyonread_adam_m_dense_19_kernel:B
0read_35_disablecopyonread_adam_v_dense_19_kernel:<
.read_36_disablecopyonread_adam_m_dense_19_bias:<
.read_37_disablecopyonread_adam_v_dense_19_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const
identity_85��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ~
Read/DisableCopyOnReadDisableCopyOnRead,read_disablecopyonread_dense_512_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp,read_disablecopyonread_dense_512_relu_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_1/DisableCopyOnReadDisableCopyOnRead,read_1_disablecopyonread_dense_512_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp,read_1_disablecopyonread_dense_512_relu_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_2/DisableCopyOnReadDisableCopyOnRead.read_2_disablecopyonread_dense_256_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp.read_2_disablecopyonread_dense_256_relu_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_3/DisableCopyOnReadDisableCopyOnRead,read_3_disablecopyonread_dense_256_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp,read_3_disablecopyonread_dense_256_relu_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_4/DisableCopyOnReadDisableCopyOnRead.read_4_disablecopyonread_dense_128_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp.read_4_disablecopyonread_dense_128_relu_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_5/DisableCopyOnReadDisableCopyOnRead,read_5_disablecopyonread_dense_128_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp,read_5_disablecopyonread_dense_128_relu_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_6/DisableCopyOnReadDisableCopyOnRead-read_6_disablecopyonread_dense_64_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp-read_6_disablecopyonread_dense_64_relu_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@
Read_7/DisableCopyOnReadDisableCopyOnRead+read_7_disablecopyonread_dense_64_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp+read_7_disablecopyonread_dense_64_relu_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_8/DisableCopyOnReadDisableCopyOnRead9read_8_disablecopyonread_dense_16_nodrop_leakyrelu_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp9read_8_disablecopyonread_dense_16_nodrop_leakyrelu_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_9/DisableCopyOnReadDisableCopyOnRead7read_9_disablecopyonread_dense_16_nodrop_leakyrelu_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp7read_9_disablecopyonread_dense_16_nodrop_leakyrelu_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_dense_19_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_dense_19_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_adam_m_dense_512_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_adam_m_dense_512_relu_kernel^Read_14/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_15/DisableCopyOnReadDisableCopyOnRead6read_15_disablecopyonread_adam_v_dense_512_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp6read_15_disablecopyonread_adam_v_dense_512_relu_kernel^Read_15/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_16/DisableCopyOnReadDisableCopyOnRead4read_16_disablecopyonread_adam_m_dense_512_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp4read_16_disablecopyonread_adam_m_dense_512_relu_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_17/DisableCopyOnReadDisableCopyOnRead4read_17_disablecopyonread_adam_v_dense_512_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp4read_17_disablecopyonread_adam_v_dense_512_relu_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_adam_m_dense_256_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_adam_m_dense_256_relu_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_19/DisableCopyOnReadDisableCopyOnRead6read_19_disablecopyonread_adam_v_dense_256_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp6read_19_disablecopyonread_adam_v_dense_256_relu_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_20/DisableCopyOnReadDisableCopyOnRead4read_20_disablecopyonread_adam_m_dense_256_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp4read_20_disablecopyonread_adam_m_dense_256_relu_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_adam_v_dense_256_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_adam_v_dense_256_relu_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_adam_m_dense_128_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_adam_m_dense_128_relu_kernel^Read_22/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_23/DisableCopyOnReadDisableCopyOnRead6read_23_disablecopyonread_adam_v_dense_128_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp6read_23_disablecopyonread_adam_v_dense_128_relu_kernel^Read_23/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_24/DisableCopyOnReadDisableCopyOnRead4read_24_disablecopyonread_adam_m_dense_128_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp4read_24_disablecopyonread_adam_m_dense_128_relu_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_25/DisableCopyOnReadDisableCopyOnRead4read_25_disablecopyonread_adam_v_dense_128_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp4read_25_disablecopyonread_adam_v_dense_128_relu_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead5read_26_disablecopyonread_adam_m_dense_64_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp5read_26_disablecopyonread_adam_m_dense_64_relu_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_adam_v_dense_64_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_adam_v_dense_64_relu_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_28/DisableCopyOnReadDisableCopyOnRead3read_28_disablecopyonread_adam_m_dense_64_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp3read_28_disablecopyonread_adam_m_dense_64_relu_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_29/DisableCopyOnReadDisableCopyOnRead3read_29_disablecopyonread_adam_v_dense_64_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp3read_29_disablecopyonread_adam_v_dense_64_relu_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_30/DisableCopyOnReadDisableCopyOnReadAread_30_disablecopyonread_adam_m_dense_16_nodrop_leakyrelu_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOpAread_30_disablecopyonread_adam_m_dense_16_nodrop_leakyrelu_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_31/DisableCopyOnReadDisableCopyOnReadAread_31_disablecopyonread_adam_v_dense_16_nodrop_leakyrelu_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOpAread_31_disablecopyonread_adam_v_dense_16_nodrop_leakyrelu_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_32/DisableCopyOnReadDisableCopyOnRead?read_32_disablecopyonread_adam_m_dense_16_nodrop_leakyrelu_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp?read_32_disablecopyonread_adam_m_dense_16_nodrop_leakyrelu_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead?read_33_disablecopyonread_adam_v_dense_16_nodrop_leakyrelu_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp?read_33_disablecopyonread_adam_v_dense_16_nodrop_leakyrelu_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_dense_19_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_dense_19_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_dense_19_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_dense_19_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:+

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586821

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_1587346
file_prefix:
&assignvariableop_dense_512_relu_kernel:
��5
&assignvariableop_1_dense_512_relu_bias:	�<
(assignvariableop_2_dense_256_relu_kernel:
��5
&assignvariableop_3_dense_256_relu_bias:	�<
(assignvariableop_4_dense_128_relu_kernel:
��5
&assignvariableop_5_dense_128_relu_bias:	�:
'assignvariableop_6_dense_64_relu_kernel:	�@3
%assignvariableop_7_dense_64_relu_bias:@E
3assignvariableop_8_dense_16_nodrop_leakyrelu_kernel:@?
1assignvariableop_9_dense_16_nodrop_leakyrelu_bias:5
#assignvariableop_10_dense_19_kernel:/
!assignvariableop_11_dense_19_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: D
0assignvariableop_14_adam_m_dense_512_relu_kernel:
��D
0assignvariableop_15_adam_v_dense_512_relu_kernel:
��=
.assignvariableop_16_adam_m_dense_512_relu_bias:	�=
.assignvariableop_17_adam_v_dense_512_relu_bias:	�D
0assignvariableop_18_adam_m_dense_256_relu_kernel:
��D
0assignvariableop_19_adam_v_dense_256_relu_kernel:
��=
.assignvariableop_20_adam_m_dense_256_relu_bias:	�=
.assignvariableop_21_adam_v_dense_256_relu_bias:	�D
0assignvariableop_22_adam_m_dense_128_relu_kernel:
��D
0assignvariableop_23_adam_v_dense_128_relu_kernel:
��=
.assignvariableop_24_adam_m_dense_128_relu_bias:	�=
.assignvariableop_25_adam_v_dense_128_relu_bias:	�B
/assignvariableop_26_adam_m_dense_64_relu_kernel:	�@B
/assignvariableop_27_adam_v_dense_64_relu_kernel:	�@;
-assignvariableop_28_adam_m_dense_64_relu_bias:@;
-assignvariableop_29_adam_v_dense_64_relu_bias:@M
;assignvariableop_30_adam_m_dense_16_nodrop_leakyrelu_kernel:@M
;assignvariableop_31_adam_v_dense_16_nodrop_leakyrelu_kernel:@G
9assignvariableop_32_adam_m_dense_16_nodrop_leakyrelu_bias:G
9assignvariableop_33_adam_v_dense_16_nodrop_leakyrelu_bias:<
*assignvariableop_34_adam_m_dense_19_kernel:<
*assignvariableop_35_adam_v_dense_19_kernel:6
(assignvariableop_36_adam_m_dense_19_bias:6
(assignvariableop_37_adam_v_dense_19_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp&assignvariableop_dense_512_relu_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp&assignvariableop_1_dense_512_relu_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_dense_256_relu_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_dense_256_relu_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_dense_128_relu_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_dense_128_relu_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp'assignvariableop_6_dense_64_relu_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_dense_64_relu_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp3assignvariableop_8_dense_16_nodrop_leakyrelu_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp1assignvariableop_9_dense_16_nodrop_leakyrelu_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_19_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_19_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_adam_m_dense_512_relu_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_adam_v_dense_512_relu_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_adam_m_dense_512_relu_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adam_v_dense_512_relu_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_m_dense_256_relu_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp0assignvariableop_19_adam_v_dense_256_relu_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_m_dense_256_relu_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_v_dense_256_relu_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_m_dense_128_relu_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp0assignvariableop_23_adam_v_dense_128_relu_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_m_dense_128_relu_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adam_v_dense_128_relu_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp/assignvariableop_26_adam_m_dense_64_relu_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_adam_v_dense_64_relu_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp-assignvariableop_28_adam_m_dense_64_relu_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_v_dense_64_relu_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp;assignvariableop_30_adam_m_dense_16_nodrop_leakyrelu_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp;assignvariableop_31_adam_v_dense_16_nodrop_leakyrelu_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp9assignvariableop_32_adam_m_dense_16_nodrop_leakyrelu_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp9assignvariableop_33_adam_v_dense_16_nodrop_leakyrelu_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_19_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_19_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_19_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_19_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

f
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586096

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
/__inference_dense_64_relu_layer_call_fn_1586857

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_dense_128_relu_layer_call_fn_1586810

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586047p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1586727

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_30_layer_call_fn_1586878

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586178`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1585985

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586065

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_27_layer_call_fn_1586737

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586145a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586749

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�b
�
"__inference__wrapped_model_1585970
input_embeddinga
Mmusic_instruments_sounds_model5_dense_512_relu_matmul_readvariableop_resource:
��]
Nmusic_instruments_sounds_model5_dense_512_relu_biasadd_readvariableop_resource:	�a
Mmusic_instruments_sounds_model5_dense_256_relu_matmul_readvariableop_resource:
��]
Nmusic_instruments_sounds_model5_dense_256_relu_biasadd_readvariableop_resource:	�a
Mmusic_instruments_sounds_model5_dense_128_relu_matmul_readvariableop_resource:
��]
Nmusic_instruments_sounds_model5_dense_128_relu_biasadd_readvariableop_resource:	�_
Lmusic_instruments_sounds_model5_dense_64_relu_matmul_readvariableop_resource:	�@[
Mmusic_instruments_sounds_model5_dense_64_relu_biasadd_readvariableop_resource:@j
Xmusic_instruments_sounds_model5_dense_16_nodrop_leakyrelu_matmul_readvariableop_resource:@g
Ymusic_instruments_sounds_model5_dense_16_nodrop_leakyrelu_biasadd_readvariableop_resource:Y
Gmusic_instruments_sounds_model5_dense_19_matmul_readvariableop_resource:V
Hmusic_instruments_sounds_model5_dense_19_biasadd_readvariableop_resource:
identity��Emusic_instruments_sounds_model5/dense_128_relu/BiasAdd/ReadVariableOp�Dmusic_instruments_sounds_model5/dense_128_relu/MatMul/ReadVariableOp�Pmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp�Omusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp�?music_instruments_sounds_model5/dense_19/BiasAdd/ReadVariableOp�>music_instruments_sounds_model5/dense_19/MatMul/ReadVariableOp�Emusic_instruments_sounds_model5/dense_256_relu/BiasAdd/ReadVariableOp�Dmusic_instruments_sounds_model5/dense_256_relu/MatMul/ReadVariableOp�Emusic_instruments_sounds_model5/dense_512_relu/BiasAdd/ReadVariableOp�Dmusic_instruments_sounds_model5/dense_512_relu/MatMul/ReadVariableOp�Dmusic_instruments_sounds_model5/dense_64_relu/BiasAdd/ReadVariableOp�Cmusic_instruments_sounds_model5/dense_64_relu/MatMul/ReadVariableOp�
Dmusic_instruments_sounds_model5/dense_512_relu/MatMul/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model5_dense_512_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5music_instruments_sounds_model5/dense_512_relu/MatMulMatMulinput_embeddingLmusic_instruments_sounds_model5/dense_512_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Emusic_instruments_sounds_model5/dense_512_relu/BiasAdd/ReadVariableOpReadVariableOpNmusic_instruments_sounds_model5_dense_512_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6music_instruments_sounds_model5/dense_512_relu/BiasAddBiasAdd?music_instruments_sounds_model5/dense_512_relu/MatMul:product:0Mmusic_instruments_sounds_model5/dense_512_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model5/dense_512_relu/ReluRelu?music_instruments_sounds_model5/dense_512_relu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model5/dropout_27/IdentityIdentityAmusic_instruments_sounds_model5/dense_512_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
Dmusic_instruments_sounds_model5/dense_256_relu/MatMul/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model5_dense_256_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5music_instruments_sounds_model5/dense_256_relu/MatMulMatMul<music_instruments_sounds_model5/dropout_27/Identity:output:0Lmusic_instruments_sounds_model5/dense_256_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Emusic_instruments_sounds_model5/dense_256_relu/BiasAdd/ReadVariableOpReadVariableOpNmusic_instruments_sounds_model5_dense_256_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6music_instruments_sounds_model5/dense_256_relu/BiasAddBiasAdd?music_instruments_sounds_model5/dense_256_relu/MatMul:product:0Mmusic_instruments_sounds_model5/dense_256_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model5/dense_256_relu/ReluRelu?music_instruments_sounds_model5/dense_256_relu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model5/dropout_28/IdentityIdentityAmusic_instruments_sounds_model5/dense_256_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
Dmusic_instruments_sounds_model5/dense_128_relu/MatMul/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model5_dense_128_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5music_instruments_sounds_model5/dense_128_relu/MatMulMatMul<music_instruments_sounds_model5/dropout_28/Identity:output:0Lmusic_instruments_sounds_model5/dense_128_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Emusic_instruments_sounds_model5/dense_128_relu/BiasAdd/ReadVariableOpReadVariableOpNmusic_instruments_sounds_model5_dense_128_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6music_instruments_sounds_model5/dense_128_relu/BiasAddBiasAdd?music_instruments_sounds_model5/dense_128_relu/MatMul:product:0Mmusic_instruments_sounds_model5/dense_128_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model5/dense_128_relu/ReluRelu?music_instruments_sounds_model5/dense_128_relu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model5/dropout_29/IdentityIdentityAmusic_instruments_sounds_model5/dense_128_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
Cmusic_instruments_sounds_model5/dense_64_relu/MatMul/ReadVariableOpReadVariableOpLmusic_instruments_sounds_model5_dense_64_relu_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
4music_instruments_sounds_model5/dense_64_relu/MatMulMatMul<music_instruments_sounds_model5/dropout_29/Identity:output:0Kmusic_instruments_sounds_model5/dense_64_relu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Dmusic_instruments_sounds_model5/dense_64_relu/BiasAdd/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model5_dense_64_relu_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5music_instruments_sounds_model5/dense_64_relu/BiasAddBiasAdd>music_instruments_sounds_model5/dense_64_relu/MatMul:product:0Lmusic_instruments_sounds_model5/dense_64_relu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2music_instruments_sounds_model5/dense_64_relu/ReluRelu>music_instruments_sounds_model5/dense_64_relu/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
3music_instruments_sounds_model5/dropout_30/IdentityIdentity@music_instruments_sounds_model5/dense_64_relu/Relu:activations:0*
T0*'
_output_shapes
:���������@�
Omusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOpReadVariableOpXmusic_instruments_sounds_model5_dense_16_nodrop_leakyrelu_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
@music_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMulMatMul<music_instruments_sounds_model5/dropout_30/Identity:output:0Wmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Pmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOpReadVariableOpYmusic_instruments_sounds_model5_dense_16_nodrop_leakyrelu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Amusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAddBiasAddJmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul:product:0Xmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Amusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/SigmoidSigmoidJmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd:output:0*
T0*'
_output_shapes
:����������
>music_instruments_sounds_model5/dense_19/MatMul/ReadVariableOpReadVariableOpGmusic_instruments_sounds_model5_dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
/music_instruments_sounds_model5/dense_19/MatMulMatMulEmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/Sigmoid:y:0Fmusic_instruments_sounds_model5/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?music_instruments_sounds_model5/dense_19/BiasAdd/ReadVariableOpReadVariableOpHmusic_instruments_sounds_model5_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
0music_instruments_sounds_model5/dense_19/BiasAddBiasAdd9music_instruments_sounds_model5/dense_19/MatMul:product:0Gmusic_instruments_sounds_model5/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0music_instruments_sounds_model5/dense_19/SoftmaxSoftmax9music_instruments_sounds_model5/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity:music_instruments_sounds_model5/dense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpF^music_instruments_sounds_model5/dense_128_relu/BiasAdd/ReadVariableOpE^music_instruments_sounds_model5/dense_128_relu/MatMul/ReadVariableOpQ^music_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOpP^music_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp@^music_instruments_sounds_model5/dense_19/BiasAdd/ReadVariableOp?^music_instruments_sounds_model5/dense_19/MatMul/ReadVariableOpF^music_instruments_sounds_model5/dense_256_relu/BiasAdd/ReadVariableOpE^music_instruments_sounds_model5/dense_256_relu/MatMul/ReadVariableOpF^music_instruments_sounds_model5/dense_512_relu/BiasAdd/ReadVariableOpE^music_instruments_sounds_model5/dense_512_relu/MatMul/ReadVariableOpE^music_instruments_sounds_model5/dense_64_relu/BiasAdd/ReadVariableOpD^music_instruments_sounds_model5/dense_64_relu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2�
Emusic_instruments_sounds_model5/dense_128_relu/BiasAdd/ReadVariableOpEmusic_instruments_sounds_model5/dense_128_relu/BiasAdd/ReadVariableOp2�
Dmusic_instruments_sounds_model5/dense_128_relu/MatMul/ReadVariableOpDmusic_instruments_sounds_model5/dense_128_relu/MatMul/ReadVariableOp2�
Pmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOpPmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/BiasAdd/ReadVariableOp2�
Omusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOpOmusic_instruments_sounds_model5/dense_16_nodrop_leakyrelu/MatMul/ReadVariableOp2�
?music_instruments_sounds_model5/dense_19/BiasAdd/ReadVariableOp?music_instruments_sounds_model5/dense_19/BiasAdd/ReadVariableOp2�
>music_instruments_sounds_model5/dense_19/MatMul/ReadVariableOp>music_instruments_sounds_model5/dense_19/MatMul/ReadVariableOp2�
Emusic_instruments_sounds_model5/dense_256_relu/BiasAdd/ReadVariableOpEmusic_instruments_sounds_model5/dense_256_relu/BiasAdd/ReadVariableOp2�
Dmusic_instruments_sounds_model5/dense_256_relu/MatMul/ReadVariableOpDmusic_instruments_sounds_model5/dense_256_relu/MatMul/ReadVariableOp2�
Emusic_instruments_sounds_model5/dense_512_relu/BiasAdd/ReadVariableOpEmusic_instruments_sounds_model5/dense_512_relu/BiasAdd/ReadVariableOp2�
Dmusic_instruments_sounds_model5/dense_512_relu/MatMul/ReadVariableOpDmusic_instruments_sounds_model5/dense_512_relu/MatMul/ReadVariableOp2�
Dmusic_instruments_sounds_model5/dense_64_relu/BiasAdd/ReadVariableOpDmusic_instruments_sounds_model5/dense_64_relu/BiasAdd/ReadVariableOp2�
Cmusic_instruments_sounds_model5/dense_64_relu/MatMul/ReadVariableOpCmusic_instruments_sounds_model5/dense_64_relu/MatMul/ReadVariableOp:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�
�
;__inference_dense_16_nodrop_leakyrelu_layer_call_fn_1586904

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586109o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586167

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586796

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586259
input_embedding
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_embeddingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�
�
0__inference_dense_512_relu_layer_call_fn_1586716

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1585985p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586801

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586003

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586178

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�/
�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586299

inputs*
dense_512_relu_1586264:
��%
dense_512_relu_1586266:	�*
dense_256_relu_1586270:
��%
dense_256_relu_1586272:	�*
dense_128_relu_1586276:
��%
dense_128_relu_1586278:	�(
dense_64_relu_1586282:	�@#
dense_64_relu_1586284:@3
!dense_16_nodrop_leakyrelu_1586288:@/
!dense_16_nodrop_leakyrelu_1586290:"
dense_19_1586293:
dense_19_1586295:
identity��&dense_128_relu/StatefulPartitionedCall�1dense_16_nodrop_leakyrelu/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinputsdense_512_relu_1586264dense_512_relu_1586266*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1585985�
dropout_27/PartitionedCallPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586145�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_256_relu_1586270dense_256_relu_1586272*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586016�
dropout_28/PartitionedCallPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586156�
&dense_128_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0dense_128_relu_1586276dense_128_relu_1586278*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586047�
dropout_29/PartitionedCallPartitionedCall/dense_128_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586167�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_64_relu_1586282dense_64_relu_1586284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586078�
dropout_30/PartitionedCallPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586178�
1dense_16_nodrop_leakyrelu/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0!dense_16_nodrop_leakyrelu_1586288!dense_16_nodrop_leakyrelu_1586290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586109�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall:dense_16_nodrop_leakyrelu/StatefulPartitionedCall:output:0dense_19_1586293dense_19_1586295*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1586126x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^dense_128_relu/StatefulPartitionedCall2^dense_16_nodrop_leakyrelu/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2P
&dense_128_relu/StatefulPartitionedCall&dense_128_relu/StatefulPartitionedCall2f
1dense_16_nodrop_leakyrelu/StatefulPartitionedCall1dense_16_nodrop_leakyrelu/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586156

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�5
�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586133
input_embedding*
dense_512_relu_1585986:
��%
dense_512_relu_1585988:	�*
dense_256_relu_1586017:
��%
dense_256_relu_1586019:	�*
dense_128_relu_1586048:
��%
dense_128_relu_1586050:	�(
dense_64_relu_1586079:	�@#
dense_64_relu_1586081:@3
!dense_16_nodrop_leakyrelu_1586110:@/
!dense_16_nodrop_leakyrelu_1586112:"
dense_19_1586127:
dense_19_1586129:
identity��&dense_128_relu/StatefulPartitionedCall�1dense_16_nodrop_leakyrelu/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�"dropout_27/StatefulPartitionedCall�"dropout_28/StatefulPartitionedCall�"dropout_29/StatefulPartitionedCall�"dropout_30/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinput_embeddingdense_512_relu_1585986dense_512_relu_1585988*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1585985�
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586003�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_256_relu_1586017dense_256_relu_1586019*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586016�
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586034�
&dense_128_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0dense_128_relu_1586048dense_128_relu_1586050*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586047�
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall/dense_128_relu/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586065�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_64_relu_1586079dense_64_relu_1586081*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586078�
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586096�
1dense_16_nodrop_leakyrelu/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0!dense_16_nodrop_leakyrelu_1586110!dense_16_nodrop_leakyrelu_1586112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586109�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall:dense_16_nodrop_leakyrelu/StatefulPartitionedCall:output:0dense_19_1586127dense_19_1586129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1586126x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^dense_128_relu/StatefulPartitionedCall2^dense_16_nodrop_leakyrelu/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:����������: : : : : : : : : : : : 2P
&dense_128_relu/StatefulPartitionedCall&dense_128_relu/StatefulPartitionedCall2f
1dense_16_nodrop_leakyrelu/StatefulPartitionedCall1dense_16_nodrop_leakyrelu/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�

f
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586843

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586754

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586890

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586895

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
L
input_embedding9
!serving_default_input_embedding:0����������<
dense_190
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias"
_tf_keras_layer
v
0
1
)2
*3
84
95
G6
H7
V8
W9
^10
_11"
trackable_list_wrapper
v
0
1
)2
*3
84
95
G6
H7
V8
W9
^10
_11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
etrace_0
ftrace_1
gtrace_2
htrace_32�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586259
A__inference_music_instruments_sounds_model5_layer_call_fn_1586326
A__inference_music_instruments_sounds_model5_layer_call_fn_1586550
A__inference_music_instruments_sounds_model5_layer_call_fn_1586579�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zetrace_0zftrace_1zgtrace_2zhtrace_3
�
itrace_0
jtrace_1
ktrace_2
ltrace_32�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586133
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586191
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586657
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586707�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0zjtrace_1zktrace_2zltrace_3
�B�
"__inference__wrapped_model_1585970input_embedding"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
m
_variables
n_iterations
o_learning_rate
p_index_dict
q
_momentums
r_velocities
s_update_step_xla"
experimentalOptimizer
,
tserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_02�
0__inference_dense_512_relu_layer_call_fn_1586716�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0
�
{trace_02�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1586727�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0
):'
��2dense_512_relu/kernel
": �2dense_512_relu/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_27_layer_call_fn_1586732
,__inference_dropout_27_layer_call_fn_1586737�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586749
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586754�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_dense_256_relu_layer_call_fn_1586763�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586774�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'
��2dense_256_relu/kernel
": �2dense_256_relu/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_28_layer_call_fn_1586779
,__inference_dropout_28_layer_call_fn_1586784�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586796
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586801�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_dense_128_relu_layer_call_fn_1586810�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586821�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'
��2dense_128_relu/kernel
": �2dense_128_relu/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_29_layer_call_fn_1586826
,__inference_dropout_29_layer_call_fn_1586831�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586843
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586848�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_dense_64_relu_layer_call_fn_1586857�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586868�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%	�@2dense_64_relu/kernel
 :@2dense_64_relu/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_30_layer_call_fn_1586873
,__inference_dropout_30_layer_call_fn_1586878�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586890
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586895�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_dense_16_nodrop_leakyrelu_layer_call_fn_1586904�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586915�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
2:0@2 dense_16_nodrop_leakyrelu/kernel
,:*2dense_16_nodrop_leakyrelu/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_19_layer_call_fn_1586924�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_19_layer_call_and_return_conditional_losses_1586935�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:2dense_19/kernel
:2dense_19/bias
 "
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586259input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586326input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586550inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_music_instruments_sounds_model5_layer_call_fn_1586579inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586133input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586191input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586657inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586707inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
n0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
%__inference_signature_wrapper_1586521input_embedding"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
0__inference_dense_512_relu_layer_call_fn_1586716inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1586727inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_27_layer_call_fn_1586732inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_27_layer_call_fn_1586737inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586749inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586754inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
0__inference_dense_256_relu_layer_call_fn_1586763inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586774inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_28_layer_call_fn_1586779inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_28_layer_call_fn_1586784inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586796inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586801inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
0__inference_dense_128_relu_layer_call_fn_1586810inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586821inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_29_layer_call_fn_1586826inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_29_layer_call_fn_1586831inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586843inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586848inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
/__inference_dense_64_relu_layer_call_fn_1586857inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586868inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_30_layer_call_fn_1586873inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_30_layer_call_fn_1586878inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586890inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586895inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
;__inference_dense_16_nodrop_leakyrelu_layer_call_fn_1586904inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586915inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dense_19_layer_call_fn_1586924inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_19_layer_call_and_return_conditional_losses_1586935inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.:,
��2Adam/m/dense_512_relu/kernel
.:,
��2Adam/v/dense_512_relu/kernel
':%�2Adam/m/dense_512_relu/bias
':%�2Adam/v/dense_512_relu/bias
.:,
��2Adam/m/dense_256_relu/kernel
.:,
��2Adam/v/dense_256_relu/kernel
':%�2Adam/m/dense_256_relu/bias
':%�2Adam/v/dense_256_relu/bias
.:,
��2Adam/m/dense_128_relu/kernel
.:,
��2Adam/v/dense_128_relu/kernel
':%�2Adam/m/dense_128_relu/bias
':%�2Adam/v/dense_128_relu/bias
,:*	�@2Adam/m/dense_64_relu/kernel
,:*	�@2Adam/v/dense_64_relu/kernel
%:#@2Adam/m/dense_64_relu/bias
%:#@2Adam/v/dense_64_relu/bias
7:5@2'Adam/m/dense_16_nodrop_leakyrelu/kernel
7:5@2'Adam/v/dense_16_nodrop_leakyrelu/kernel
1:/2%Adam/m/dense_16_nodrop_leakyrelu/bias
1:/2%Adam/v/dense_16_nodrop_leakyrelu/bias
&:$2Adam/m/dense_19/kernel
&:$2Adam/v/dense_19/kernel
 :2Adam/m/dense_19/bias
 :2Adam/v/dense_19/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__wrapped_model_1585970~)*89GHVW^_9�6
/�,
*�'
input_embedding����������
� "3�0
.
dense_19"�
dense_19����������
K__inference_dense_128_relu_layer_call_and_return_conditional_losses_1586821e890�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_dense_128_relu_layer_call_fn_1586810Z890�-
&�#
!�
inputs����������
� ""�
unknown�����������
V__inference_dense_16_nodrop_leakyrelu_layer_call_and_return_conditional_losses_1586915cVW/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
;__inference_dense_16_nodrop_leakyrelu_layer_call_fn_1586904XVW/�,
%�"
 �
inputs���������@
� "!�
unknown����������
E__inference_dense_19_layer_call_and_return_conditional_losses_1586935c^_/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
*__inference_dense_19_layer_call_fn_1586924X^_/�,
%�"
 �
inputs���������
� "!�
unknown����������
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1586774e)*0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_dense_256_relu_layer_call_fn_1586763Z)*0�-
&�#
!�
inputs����������
� ""�
unknown�����������
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1586727e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_dense_512_relu_layer_call_fn_1586716Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1586868dGH0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
/__inference_dense_64_relu_layer_call_fn_1586857YGH0�-
&�#
!�
inputs����������
� "!�
unknown���������@�
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586749e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_27_layer_call_and_return_conditional_losses_1586754e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_27_layer_call_fn_1586732Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
,__inference_dropout_27_layer_call_fn_1586737Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586796e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_28_layer_call_and_return_conditional_losses_1586801e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_28_layer_call_fn_1586779Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
,__inference_dropout_28_layer_call_fn_1586784Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586843e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_29_layer_call_and_return_conditional_losses_1586848e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_29_layer_call_fn_1586826Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
,__inference_dropout_29_layer_call_fn_1586831Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586890c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
G__inference_dropout_30_layer_call_and_return_conditional_losses_1586895c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
,__inference_dropout_30_layer_call_fn_1586873X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
,__inference_dropout_30_layer_call_fn_1586878X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586133)*89GHVW^_A�>
7�4
*�'
input_embedding����������
p

 
� ",�)
"�
tensor_0���������
� �
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586191)*89GHVW^_A�>
7�4
*�'
input_embedding����������
p 

 
� ",�)
"�
tensor_0���������
� �
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586657v)*89GHVW^_8�5
.�+
!�
inputs����������
p

 
� ",�)
"�
tensor_0���������
� �
\__inference_music_instruments_sounds_model5_layer_call_and_return_conditional_losses_1586707v)*89GHVW^_8�5
.�+
!�
inputs����������
p 

 
� ",�)
"�
tensor_0���������
� �
A__inference_music_instruments_sounds_model5_layer_call_fn_1586259t)*89GHVW^_A�>
7�4
*�'
input_embedding����������
p

 
� "!�
unknown����������
A__inference_music_instruments_sounds_model5_layer_call_fn_1586326t)*89GHVW^_A�>
7�4
*�'
input_embedding����������
p 

 
� "!�
unknown����������
A__inference_music_instruments_sounds_model5_layer_call_fn_1586550k)*89GHVW^_8�5
.�+
!�
inputs����������
p

 
� "!�
unknown����������
A__inference_music_instruments_sounds_model5_layer_call_fn_1586579k)*89GHVW^_8�5
.�+
!�
inputs����������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_1586521�)*89GHVW^_L�I
� 
B�?
=
input_embedding*�'
input_embedding����������"3�0
.
dense_19"�
dense_19���������