#! @Chapter Common Methods
#! @Section For Numerical Sets And Integer Partitions

# #! @Label
# #! @Arguments IntegerPartition
# #! @Returns List
# DeclareAttribute( "GapsOfFirstType", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #! @Returns List
# DeclareAttribute( "GapsOfSecondType", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsSemiSymmetric", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsSymmetric", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsAlmostSymmetric", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareAttribute( "Atom", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareAttribute( "PseudoFrobeniusNumbers", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #! @Returns Integer
# #!
# DeclareOperation( "Type", [IsIntegerPartitionOrNumericalSet] );

# DeclareAttribute( "Order", IsIntegerPartitionOrNumericalSet );
