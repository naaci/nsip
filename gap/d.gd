#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "Dual3", IsIntegerPartition );

#! @Arguments IsNumericalSet
#! @Returns IsNumericalSet
DeclareAttribute( "Dual3", IsNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsAlmostSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareAttribute( "Atom", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareAttribute( "PseudoFrobeniusNumbers", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#! @Returns Integer
#!
DeclareOperation( "Type", [IsIntegerPartitionOrNumericalSet] );

DeclareAttribute( "Order", IsIntegerPartitionOrNumericalSet );
