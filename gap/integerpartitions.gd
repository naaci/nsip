#! @Chapter Integer Partitions
#! @Section Definiton
#! Integer Partitions ...

DeclareCategory( "IsIntegerPartition", IsIntegerPartitionOrNumericalSet );
BindGlobal( "IntegerPartitionsType", 
    NewType( 
        CollectionsFamily( CyclotomicsFamily ), 
        IsIntegerPartition 
        )
);

#! @Section Construction of An Integer Partition

#! @Label
#! @Arguments Parts
#! @Returns IntegerPartition
DeclareAttribute( "IntegerPartition", IsList );

# #! @Section Equality of Integer Partitions
# DeclareOperation( "=", [IsIntegerPartition,IsIntegerPartition] );

#! @Section Parts of An Integer Partition

#! @Label
#! @Arguments i
#! @Returns $P_i\in\{P_1=0,P_2,P_3,\dots\}$
DeclareOperation("[]",[IsIntegerPartition,IsInt]);

DeclareOperation( "{}", [IsIntegerPartition,IsList] );

#! @Arguments IntegerPartition
#! @Returns Integer
DeclareAttribute( "Trace", IsIntegerPartition );
