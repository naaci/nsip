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
#! @Returns Integer
#! @Description Calculates the Genus of the given integer partition,
DeclareAttribute( "Genus", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "Length", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "FrobeniusNumber", IsIntegerPartition );

#! @BeginGroup DualityOfIntegerPartition
#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "Dual", IsIntegerPartition );
DeclareAttribute( "Dual2", IsIntegerPartition );
DeclareAttribute( "Dual3", IsIntegerPartition );
#! @EndGroup


#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSuperSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPerfectSemigroup", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareAttribute( "Trace", IsIntegerPartition );

