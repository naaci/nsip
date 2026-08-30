# DeclareInfoClass("InfoIntPart");

#! @Chapter Introduction
#! @Section Loading Package

DeclareCategory( "IsIntegerPartitionOrNumericalSet", IsAttributeStoringRep );

#! @Chapter Numerical Sets
#! @Section Definition
#! @Section Construction of A Numerical Set
ReadPackage( "nsip", "gap/numericalsets.gd" );

#! @Chapter Integer Partitions
#! @Section Definition
#! @Section Construction of An Integer Partitions
ReadPackage( "nsip", "gap/integerpartitions.gd" );

ReadPackage( "nsip", "gap/common.gd" );

#! @Chapter Conversions
ReadPackage( "nsip", "gap/conversions.gd" );

#! @Chapter Apéry Sets
ReadPackage( "nsip", "gap/apery.gd" );

#! @Chapter Conjugate
ReadPackage( "nsip", "gap/n.gd" );

#! @Chapter Duality
ReadPackage( "nsip", "gap/d.gd" );

# ReadPackage( "nsip", "gap/attributes.gd" );
# ReadPackage( "nsip", "gap/attributesSG.gd" );
ReadPackage( "nsip", "gap/random.gd" );

ReadPackage( "nsip", "gap/tree.gd" );

ReadPackage( "nsip", "gap/hooklengths.gd" );

ReadPackage( "nsip", "gap/special.gd" );

ReadPackage( "nsip", "gap/euler.gd" );
