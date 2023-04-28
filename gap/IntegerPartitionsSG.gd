#! @Chapter Integer Partitions
#! @Section Integer SG Partitions


#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSGIntegerPartition", IsIntegerPartition );

# DeclareProperty( "IsSymmetric", IsSGIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsArf", IsIntegerPartition );

#! @Arguments IntegerSGPartition
#!
DeclareProperty( "IsPseudoSymmetric", IsSGIntegerPartition );

#! @Arguments IntegerSGPartition
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsSGIntegerPartition );

#! @Arguments IntegerSGPartition
#!
DeclareOperation( "IsIrreducible", [IsSGIntegerPartition] );

#! @Arguments IntegerSGPartition
#!
DeclareProperty( "IsAlmostSymmetric", IsSGIntegerPartition );

#! @Arguments IntegerSGPartition
#!
DeclareAttribute( "GapsOfFirstType", IsSGIntegerPartition );
