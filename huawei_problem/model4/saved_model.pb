Ų
°
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
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
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5°ņ
j
myInputPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
j
y-inputPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
e
random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
W
random_uniform/minConst*
valueB
 *æ*
dtype0*
_output_shapes
: 
W
random_uniform/maxConst*
valueB
 *ĶĢĢ>*
dtype0*
_output_shapes
: 

random_uniform/RandomUniformRandomUniformrandom_uniform/shape*

seed *
T0*
dtype0*
_output_shapes

:*
seed2 
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0*
_output_shapes
: 
t
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
_output_shapes

:*
T0
f
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0*
_output_shapes

:
|
Variable
VariableV2*
shared_name *
dtype0*
_output_shapes

:*
	container *
shape
:
¢
Variable/AssignAssignVariablerandom_uniform*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:
i
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes

:
`
random_uniform_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Y
random_uniform_1/minConst*
valueB
 *æ*
dtype0*
_output_shapes
: 
Y
random_uniform_1/maxConst*
_output_shapes
: *
valueB
 *ĶĢĢ>*
dtype0

random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape*

seed *
T0*
dtype0*
_output_shapes
:*
seed2 
h
random_uniform_1/subSubrandom_uniform_1/maxrandom_uniform_1/min*
T0*
_output_shapes
: 
v
random_uniform_1/mulMulrandom_uniform_1/RandomUniformrandom_uniform_1/sub*
T0*
_output_shapes
:
h
random_uniform_1Addrandom_uniform_1/mulrandom_uniform_1/min*
T0*
_output_shapes
:
v

Variable_1
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
¦
Variable_1/AssignAssign
Variable_1random_uniform_1*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
k
Variable_1/readIdentity
Variable_1*
_output_shapes
:*
T0*
_class
loc:@Variable_1

MatMulMatMulmyInputVariable/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
U
addAddMatMulVariable_1/read*'
_output_shapes
:’’’’’’’’’*
T0
I
SigmoidSigmoidadd*'
_output_shapes
:’’’’’’’’’*
T0
g
random_uniform_2/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Y
random_uniform_2/minConst*
valueB
 *æ*
dtype0*
_output_shapes
: 
Y
random_uniform_2/maxConst*
valueB
 *ĶĢĢ>*
dtype0*
_output_shapes
: 

random_uniform_2/RandomUniformRandomUniformrandom_uniform_2/shape*
dtype0*
_output_shapes

:*
seed2 *

seed *
T0
h
random_uniform_2/subSubrandom_uniform_2/maxrandom_uniform_2/min*
_output_shapes
: *
T0
z
random_uniform_2/mulMulrandom_uniform_2/RandomUniformrandom_uniform_2/sub*
T0*
_output_shapes

:
l
random_uniform_2Addrandom_uniform_2/mulrandom_uniform_2/min*
_output_shapes

:*
T0
~

Variable_2
VariableV2*
shape
:*
shared_name *
dtype0*
_output_shapes

:*
	container 
Ŗ
Variable_2/AssignAssign
Variable_2random_uniform_2*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes

:
o
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2*
_output_shapes

:
`
random_uniform_3/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Y
random_uniform_3/minConst*
valueB
 *æ*
dtype0*
_output_shapes
: 
Y
random_uniform_3/maxConst*
valueB
 *ĶĢĢ>*
dtype0*
_output_shapes
: 

random_uniform_3/RandomUniformRandomUniformrandom_uniform_3/shape*
dtype0*
_output_shapes
:*
seed2 *

seed *
T0
h
random_uniform_3/subSubrandom_uniform_3/maxrandom_uniform_3/min*
T0*
_output_shapes
: 
v
random_uniform_3/mulMulrandom_uniform_3/RandomUniformrandom_uniform_3/sub*
T0*
_output_shapes
:
h
random_uniform_3Addrandom_uniform_3/mulrandom_uniform_3/min*
T0*
_output_shapes
:
v

Variable_3
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
¦
Variable_3/AssignAssign
Variable_3random_uniform_3*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
k
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3*
_output_shapes
:

MatMul_1MatMulSigmoidVariable_2/read*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
Y
add_1AddMatMul_1Variable_3/read*
T0*'
_output_shapes
:’’’’’’’’’
M
	Sigmoid_1Sigmoidadd_1*
T0*'
_output_shapes
:’’’’’’’’’
P
subSub	Sigmoid_1y-input*
T0*'
_output_shapes
:’’’’’’’’’
G
SquareSquaresub*'
_output_shapes
:’’’’’’’’’*
T0
V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Y
MeanMeanSquareConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
valueB"      *
dtype0

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0
_
gradients/Mean_grad/ShapeShapeSquare*
_output_shapes
:*
T0*
out_type0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
a
gradients/Mean_grad/Shape_1ShapeSquare*
out_type0*
_output_shapes
:*
T0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:’’’’’’’’’
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*'
_output_shapes
:’’’’’’’’’*
T0

gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:’’’’’’’’’
a
gradients/sub_grad/ShapeShape	Sigmoid_1*
T0*
out_type0*
_output_shapes
:
a
gradients/sub_grad/Shape_1Shapey-input*
out_type0*
_output_shapes
:*
T0
“
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0
Ø
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ś
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*'
_output_shapes
:’’’’’’’’’
ą
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*'
_output_shapes
:’’’’’’’’’

$gradients/Sigmoid_1_grad/SigmoidGradSigmoidGrad	Sigmoid_1+gradients/sub_grad/tuple/control_dependency*
T0*'
_output_shapes
:’’’’’’’’’
b
gradients/add_1_grad/ShapeShapeMatMul_1*
out_type0*
_output_shapes
:*
T0
f
gradients/add_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ŗ
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
±
gradients/add_1_grad/SumSum$gradients/Sigmoid_1_grad/SigmoidGrad*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
µ
gradients/add_1_grad/Sum_1Sum$gradients/Sigmoid_1_grad/SigmoidGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ā
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*'
_output_shapes
:’’’’’’’’’*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
Ū
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:
Ą
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable_2/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
±
 gradients/MatMul_1_grad/MatMul_1MatMulSigmoid-gradients/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
ģ
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*'
_output_shapes
:’’’’’’’’’
é
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes

:*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1

"gradients/Sigmoid_grad/SigmoidGradSigmoidGradSigmoid0gradients/MatMul_1_grad/tuple/control_dependency*'
_output_shapes
:’’’’’’’’’*
T0
^
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
“
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
«
gradients/add_grad/SumSum"gradients/Sigmoid_grad/SigmoidGrad(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
Æ
gradients/add_grad/Sum_1Sum"gradients/Sigmoid_grad/SigmoidGrad*gradients/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ś
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*'
_output_shapes
:’’’’’’’’’
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:
ŗ
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
­
gradients/MatMul_grad/MatMul_1MatMulmyInput+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ä
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’
į
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes

:
{
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
«
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
g
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*
_class
loc:@Variable
{
beta2_power/initial_valueConst*
valueB
 *w¾?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
«
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
g
beta2_power/readIdentitybeta2_power*
_class
loc:@Variable*
_output_shapes
: *
T0

Variable/Adam/Initializer/zerosConst*
_class
loc:@Variable*
valueB*    *
dtype0*
_output_shapes

:

Variable/Adam
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@Variable
½
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:
s
Variable/Adam/readIdentityVariable/Adam*
_class
loc:@Variable*
_output_shapes

:*
T0

!Variable/Adam_1/Initializer/zerosConst*
_class
loc:@Variable*
valueB*    *
dtype0*
_output_shapes

:
 
Variable/Adam_1
VariableV2*
_class
loc:@Variable*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
Ć
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:
w
Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable*
_output_shapes

:

!Variable_1/Adam/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB*    *
dtype0*
_output_shapes
:

Variable_1/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_1*
	container *
shape:
Į
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
u
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1*
_output_shapes
:

#Variable_1/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB*    *
dtype0*
_output_shapes
:

Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_1*
	container 
Ē
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
y
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
_class
loc:@Variable_1*
_output_shapes
:*
T0

!Variable_2/Adam/Initializer/zerosConst*
_class
loc:@Variable_2*
valueB*    *
dtype0*
_output_shapes

:
¢
Variable_2/Adam
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@Variable_2
Å
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
y
Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2*
_output_shapes

:

#Variable_2/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_2*
valueB*    *
dtype0*
_output_shapes

:
¤
Variable_2/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@Variable_2*
	container *
shape
:
Ė
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes

:
}
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2*
_output_shapes

:

!Variable_3/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@Variable_3*
valueB*    

Variable_3/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_3*
	container 
Į
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
u
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3*
_output_shapes
:

#Variable_3/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_3*
valueB*    *
dtype0*
_output_shapes
:

Variable_3/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_3
Ē
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
T0*
_class
loc:@Variable_3*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
_output_shapes
: *
valueB
 *w¾?*
dtype0
Q
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
Ņ
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable*
use_nesterov( *
_output_shapes

:*
use_locking( 
Õ
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes
:
Ž
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( *
_output_shapes

:
×
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( *
_output_shapes
:
õ
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam*
_class
loc:@Variable*
_output_shapes
: *
T0

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
÷

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
“
AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
z
ArgMaxArgMax	Sigmoid_1ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
|
ArgMax_1ArgMaxy-inputArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:’’’’’’’’’*
T0	
`
CastCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Q
myOutputIdentity	Sigmoid_1*'
_output_shapes
:’’’’’’’’’*
T0
Š
initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^beta1_power/Assign^beta2_power/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_301e58496fe74019b79bbd1e2ceccbac/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
¶
save/SaveV2/tensor_namesConst*é
valueßBÜBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B *
dtype0
Õ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_powerbeta2_power*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
_output_shapes
:*
T0*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
¹
save/RestoreV2/tensor_namesConst*é
valueßBÜBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ń
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:
§
save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
©
save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:
¢
save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
§
save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
©
save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_1
¦
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes

:
«
save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
­
save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
¢
save/Assign_9Assign
Variable_3save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
©
save/Assign_10AssignVariable_3/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
«
save/Assign_11AssignVariable_3/Adam_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:

save/Assign_12Assignbeta1_powersave/RestoreV2:12*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(

save/Assign_13Assignbeta2_powersave/RestoreV2:13*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
ü
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ć
trainable_variables«Ø
B

Variable:0Variable/AssignVariable/read:02random_uniform:08
J
Variable_1:0Variable_1/AssignVariable_1/read:02random_uniform_1:08
J
Variable_2:0Variable_2/AssignVariable_2/read:02random_uniform_2:08
J
Variable_3:0Variable_3/AssignVariable_3/read:02random_uniform_3:08"
train_op

Adam"Å

	variables·
“

B

Variable:0Variable/AssignVariable/read:02random_uniform:08
J
Variable_1:0Variable_1/AssignVariable_1/read:02random_uniform_1:08
J
Variable_2:0Variable_2/AssignVariable_2/read:02random_uniform_2:08
J
Variable_3:0Variable_3/AssignVariable_3/read:02random_uniform_3:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0*
serving_defaulty
+
myInput 
	myInput:0’’’’’’’’’.
myOutput"
Sigmoid_1:0’’’’’’’’’tensorflow/serving/predict