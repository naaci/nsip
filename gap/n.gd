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

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartitionOrNumericalSet );
#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsPseudoSymmetric", IsIntegerPartitionOrNumericalSet );

# DeclareOperation( "IsIrreducible", [IsNSG] );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsNSG", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns Bool
DeclareProperty( "IsArf", IsIntegerPartitionOrNumericalSet );

#! @BeginGroup
#! @Arguments NumericalSet
#! @Returns NumericalSet
DeclareAttribute( "BelowParts", IsIntegerPartitionOrNumericalSet);
DeclareAttribute( "RightParts", IsIntegerPartitionOrNumericalSet);
#! @EndGroup

