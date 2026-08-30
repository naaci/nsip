#! @Chapter Conjugate
#! @Section N

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns List
DeclareAttribute( "N", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns IsIntegerPartitionOrNumericalSet
DeclareAttribute( "ConjugateOf", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns List
DeclareAttribute( "GapsOfFirstType", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns List
DeclareAttribute( "GapsOfSecondType", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsSymmetric", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartitionOrNumericalSet );
DeclareProperty( "IsSemiSymmetric", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsPseudoSymmetric", IsIntegerPartitionOrNumericalSet );

# DeclareOperation( "IsIrreducible", [IsNSG] );

DeclareProperty( "IsNSG", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsArf", IsIntegerPartitionOrNumericalSet );
