#! @Chapter Duality
#! @Section D

#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "D", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
DeclareProperty( "IsAlmostSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
DeclareAttribute( "Atom", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
DeclareAttribute( "PseudoFrobeniusNumbers", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#! @Returns Integer
DeclareOperation( "Type", [IsIntegerPartitionOrNumericalSet] );

#! @Label
#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "Order", IsIntegerPartitionOrNumericalSet );

