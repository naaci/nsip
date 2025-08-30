#! @Chapter N
#! @Section On IntegerPartition

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "N", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "ConjugateOf", IsIntegerPartition );
DeclareSynonym( "Conjugate", ConjugateOf);

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "Gaps", IsIntegerPartition );

#! @Section On NumericalSet

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "N", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns NumericalSet
DeclareAttribute( "ConjugateOf", IsNumericalSet );

###############################################
#! @Section Common Attributes

#! @Label
#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfFirstType", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfSecondType", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartitionOrNumericalSet );
DeclareProperty( "IsSemiSymmetric", IsIntegerPartitionOrNumericalSet );
# DeclareSynonym( "IsSemiSymmetric", IsPositiveSemiSymmetric);

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

#! @Section On Semigroups

#! @Label
#! @Arguments IsNSG
#!
DeclareProperty( "IsPseudoSymmetric", IsNSG );

#! @Label
#! @Arguments IsNSG
#!
DeclareOperation( "IsIrreducible", [IsNSG] );
