#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfFirstType", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfSecondType", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsAlmostSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareAttribute( "Atom", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#!
DeclareAttribute( "PseudoFrobeniusNumbers", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#! @Returns Integer
#!
DeclareOperation( "Type", [IsIntegerPartitionOrNumericalSet] );

