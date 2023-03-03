#! @Chapter Integer Partitions
#! @Section Integer SG Partitions


#!
DeclareProperty( "IsSGIntegerPartition", IsIntegerPartition );

# DeclareProperty( "IsSymmetric", IsSGIntegerPartition );

#!
DeclareProperty( "IsArf", IsIntegerPartition );

DeclareProperty( "IsPseudoSymmetric", IsSGIntegerPartition );

DeclareProperty( "IsPositiveSemiSymmetric", IsSGIntegerPartition );

DeclareOperation( "IsIrreducible", [IsSGIntegerPartition] );

DeclareProperty( "IsAlmostSymmetric", IsSGIntegerPartition );

