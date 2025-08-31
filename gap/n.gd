DeclareAttribute( "N", IsIntegerPartition );

DeclareAttribute( "ConjugateOf", IsIntegerPartition );

DeclareAttribute( "Gaps", IsIntegerPartition );

DeclareAttribute( "N", IsNumericalSet );

DeclareAttribute( "ConjugateOf", IsNumericalSet );

DeclareAttribute( "GapsOfFirstType", IsIntegerPartitionOrNumericalSet );

DeclareAttribute( "GapsOfSecondType", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsSymmetric", 
IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartitionOrNumericalSet );
DeclareProperty( "IsSemiSymmetric", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsPseudoSymmetric", IsIntegerPartitionOrNumericalSet );

# DeclareOperation( "IsIrreducible", [IsNSG] );

DeclareProperty( "IsNSG", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsArf", IsIntegerPartitionOrNumericalSet );
