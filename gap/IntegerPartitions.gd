#! @Chapter Integer Partitions
#! @Section Category of Integer Partitions
#! @Description Integer Partitions ...


# DeclareRepresentation( "IsIntegerPartitionRep", IsAttributeStoringRep, [] );

# !
DeclareCategory( "IsIntegerPartition", IsIntegerPartitionOrNumericalSet );
BindGlobal( "IntegerPartitionsType", 
    NewType( 
        CollectionsFamily( CyclotomicsFamily ), 
        IsIntegerPartition 
        )
);

#! @Section Construction of An Integer Partition

#! @Arguments Parts
#! @Returns IntegerPartition
DeclareAttribute( "IntegerPartition", IsList );

DeclareOperation( "=", [IsIntegerPartition,IsIntegerPartition] );

DeclareOperation( "[]", [IsIntegerPartition,IsInt] );

