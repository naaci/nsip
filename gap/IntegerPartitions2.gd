#! @Chapter Integer Partitions
#! @Section Attributes of An Integer Partition

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "Total", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "Parts", IsIntegerPartition );

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

#! @Arguments IntegerPartition
#! @Returns IntegerPartition
DeclareAttribute( "Dual", IsIntegerPartition );
DeclareAttribute( "Dual2", IsIntegerPartition );

#!
DeclareProperty( "IsSymmetric", IsIntegerPartition );

#!
DeclareProperty( "IsPseudoSymmetric", IsIntegerPartition );

#!
DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartition );

#!
DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartition );

#!
DeclareProperty( "IsSuperSemiSymmetric", IsIntegerPartition );

#!
DeclareProperty( "IsAlmostSymmetric", IsIntegerPartition );

#!
DeclareAttribute( "Trace", IsIntegerPartition );

