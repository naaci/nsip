#! @Chapter N
#! @Section N
#! @Subsection On IntegerPartition

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "N", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "ConjugateOf", IsIntegerPartition );
DeclareSynonym( "Conjugate", ConjugateOf);

# #! @Arguments IntegerPartition
# #! @Returns List
# DeclareAttribute( "Gaps", IsIntegerPartition );

###############################################
#! @Subsection On NumericalSet

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "N", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns NumericalSet
DeclareAttribute( "ConjugateOf", IsNumericalSet );

###############################################
#! @Subsection Common Attributes

## DeclareAttribute( "Dual", IsNumericalSet );

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

# DeclareProperty( "IsPositiveSuperSemiSymmetric", IsIntegerPartitionOrNumericalSet );
# DeclareProperty( "IsNegativeSuperSemiSymmetric", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

# #! @Label
# #! @Arguments IntegerPartition
# #!
# DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

