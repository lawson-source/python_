žĂ
Ĺ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
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
shared_namestring "serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5Ł
j
myInputPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
j
y-inputPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
e
random_uniform/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
W
random_uniform/minConst*
valueB
 *ż*
dtype0*
_output_shapes
: 
W
random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ>

random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
_output_shapes

:*
seed2 *

seed *
T0*
dtype0
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0*
_output_shapes
: 
t
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0*
_output_shapes

:
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
˘
Variable/AssignAssignVariablerandom_uniform*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:
i
Variable/readIdentityVariable*
_output_shapes

:*
T0*
_class
loc:@Variable
`
random_uniform_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Y
random_uniform_1/minConst*
_output_shapes
: *
valueB
 *ż*
dtype0
Y
random_uniform_1/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ>

random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape*
T0*
dtype0*
_output_shapes
:*
seed2 *

seed 
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
random_uniform_1Addrandom_uniform_1/mulrandom_uniform_1/min*
_output_shapes
:*
T0
v

Variable_1
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ś
Variable_1/AssignAssign
Variable_1random_uniform_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
k
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
:

MatMulMatMulmyInputVariable/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
U
addAddMatMulVariable_1/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
I
SigmoidSigmoidadd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
random_uniform_2/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Y
random_uniform_2/minConst*
valueB
 *ż*
dtype0*
_output_shapes
: 
Y
random_uniform_2/maxConst*
valueB
 *ÍĚĚ>*
dtype0*
_output_shapes
: 

random_uniform_2/RandomUniformRandomUniformrandom_uniform_2/shape*
T0*
dtype0*
_output_shapes

:*
seed2 *

seed 
h
random_uniform_2/subSubrandom_uniform_2/maxrandom_uniform_2/min*
T0*
_output_shapes
: 
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
VariableV2*
shared_name *
dtype0*
_output_shapes

:*
	container *
shape
:
Ş
Variable_2/AssignAssign
Variable_2random_uniform_2*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
o
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2*
_output_shapes

:
`
random_uniform_3/shapeConst*
dtype0*
_output_shapes
:*
valueB:
Y
random_uniform_3/minConst*
valueB
 *ż*
dtype0*
_output_shapes
: 
Y
random_uniform_3/maxConst*
valueB
 *ÍĚĚ>*
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
random_uniform_3/subSubrandom_uniform_3/maxrandom_uniform_3/min*
_output_shapes
: *
T0
v
random_uniform_3/mulMulrandom_uniform_3/RandomUniformrandom_uniform_3/sub*
_output_shapes
:*
T0
h
random_uniform_3Addrandom_uniform_3/mulrandom_uniform_3/min*
_output_shapes
:*
T0
v

Variable_3
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ś
Variable_3/AssignAssign
Variable_3random_uniform_3*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
k
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
_output_shapes
:*
T0

MatMul_1MatMulSigmoidVariable_2/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
Y
add_1AddMatMul_1Variable_3/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
M
	Sigmoid_1Sigmoidadd_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
subSub	Sigmoid_1y-input*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
G
SquareSquaresub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Y
MeanMeanSquareConst*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
_
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
gradients/Mean_grad/Shape_1ShapeSquare*
_output_shapes
:*
T0*
out_type0
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
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
:˙˙˙˙˙˙˙˙˙*
T0

gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
gradients/sub_grad/ShapeShape	Sigmoid_1*
T0*
out_type0*
_output_shapes
:
a
gradients/sub_grad/Shape_1Shapey-input*
T0*
out_type0*
_output_shapes
:
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
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
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ú
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/Sigmoid_1_grad/SigmoidGradSigmoidGrad	Sigmoid_1+gradients/sub_grad/tuple/control_dependency*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ą
gradients/add_1_grad/SumSum$gradients/Sigmoid_1_grad/SigmoidGrad*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ľ
gradients/add_1_grad/Sum_1Sum$gradients/Sigmoid_1_grad/SigmoidGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
â
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:
Ŕ
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable_2/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
ą
 gradients/MatMul_1_grad/MatMul_1MatMulSigmoid-gradients/add_1_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
ě
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:

"gradients/Sigmoid_grad/SigmoidGradSigmoidGradSigmoid0gradients/MatMul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/add_grad/ShapeShapeMatMul*
_output_shapes
:*
T0*
out_type0
d
gradients/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_grad/SumSum"gradients/Sigmoid_grad/SigmoidGrad(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_grad/Sum_1Sum"gradients/Sigmoid_grad/SigmoidGrad*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ú
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:*
T0
ş
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
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
:˙˙˙˙˙˙˙˙˙
á
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes

:
b
GradientDescent/learning_rateConst*
valueB
 *
×Ł<*
dtype0*
_output_shapes
: 

4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Variable
˙
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
_output_shapes
:*
use_locking( 

6GradientDescent/update_Variable_2/ApplyGradientDescentApplyGradientDescent
Variable_2GradientDescent/learning_rate2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
_output_shapes

:*
use_locking( 

6GradientDescent/update_Variable_3/ApplyGradientDescentApplyGradientDescent
Variable_3GradientDescent/learning_rate/gradients/add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
_output_shapes
:
ů
GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent7^GradientDescent/update_Variable_2/ApplyGradientDescent7^GradientDescent/update_Variable_3/ApplyGradientDescent
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
z
ArgMaxArgMax	Sigmoid_1ArgMax/dimension*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0*
output_type0	
T
ArgMax_1/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
|
ArgMax_1ArgMaxy-inputArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
`
CastCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Q
myOutputIdentity	Sigmoid_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
initNoOp^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_fc434eab904a49139d4b5e1fb2b60de0/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*A
value8B6BVariableB
Variable_1B
Variable_2B
Variable_3
k
save/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0*
_output_shapes
:
Ľ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1
Variable_2
Variable_3*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*
T0*

axis *
N
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

save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*A
value8B6BVariableB
Variable_1B
Variable_2B
Variable_3
n
save/RestoreV2/shape_and_slicesConst*
valueBB B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*$
_output_shapes
::::*
dtypes
2

save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes

:*
use_locking(
˘
save/Assign_1Assign
Variable_1save/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
Ś
save/Assign_2Assign
Variable_2save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes

:
˘
save/Assign_3Assign
Variable_3save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
X
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"š
	variablesŤ¨
B

Variable:0Variable/AssignVariable/read:02random_uniform:08
J
Variable_1:0Variable_1/AssignVariable_1/read:02random_uniform_1:08
J
Variable_2:0Variable_2/AssignVariable_2/read:02random_uniform_2:08
J
Variable_3:0Variable_3/AssignVariable_3/read:02random_uniform_3:08"Ă
trainable_variablesŤ¨
B

Variable:0Variable/AssignVariable/read:02random_uniform:08
J
Variable_1:0Variable_1/AssignVariable_1/read:02random_uniform_1:08
J
Variable_2:0Variable_2/AssignVariable_2/read:02random_uniform_2:08
J
Variable_3:0Variable_3/AssignVariable_3/read:02random_uniform_3:08"
train_op

GradientDescent*
serving_defaulty
+
myInput 
	myInput:0˙˙˙˙˙˙˙˙˙.
myOutput"
Sigmoid_1:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict