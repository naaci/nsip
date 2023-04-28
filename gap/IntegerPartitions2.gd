#! @Chapter Integer Partitions
#! @Section Attributes of An Integer Partition

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "Total", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "Parts", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "N", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "Gaps", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfFirstType", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfSecondType", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns Integer
#! @Description Calculates the Genus of the given integer partition,
DeclareAttribute( "Genus", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "Length", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "FrobeniusNumber", IsIntegerPartition );

#! @BeginGroup Duality
#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "Dual", IsIntegerPartition );
DeclareAttribute( "Dual2", IsIntegerPartition );
DeclareAttribute( "Dual3", IsIntegerPartition );
#! @EndGroup

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
# DeclareProperty( "IsPseudoSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSuperSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsAlmostSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPerfectSemigroup", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareAttribute( "Trace", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareOperation( "Type", [IsIntegerPartition] );

