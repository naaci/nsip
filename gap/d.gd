#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "D", IsIntegerPartition );

#! @Arguments IsNumericalSet
#! @Returns IsNumericalSet
DeclareAttribute( "D", IsNumericalSet );

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
