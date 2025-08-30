DeclareInfoClass("InfoIntPart");

DeclareCategory( "IsIntegerPartitionOrNumericalSet", IsAttributeStoringRep );

#! @Chapter Introduction
#! @Section Loading Package

#! @Chapter Numerical Sets
#! @Section Definition
#! @Section Construction of A Numerical Set
#! @Section Converting to
ReadPackage( "nsip", "gap/numericalsets.gd" );

#! @Chapter Integer Partitions
#! @Section Definition
#! @Section Construction of An Integer Partitions
#! @Section Converting to
ReadPackage( "nsip", "gap/integerpartitions.gd" );

#! @Chapter N
ReadPackage( "nsip", "gap/n.gd" );

#! @Chapter Dual3
ReadPackage( "nsip", "gap/d.gd" );

#! @Chapter Conversions
ReadPackage( "nsip", "gap/conversions.gd" );
ReadPackage( "nsip", "gap/attributes.gd" );
ReadPackage( "nsip", "gap/attributesSG.gd" );
ReadPackage( "nsip", "gap/random.gd" );

ReadPackage( "nsip", "gap/tree.gd" );
