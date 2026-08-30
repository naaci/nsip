InstallMethod( DurfeeDecomposition, [IsIntegerPartitionOrNumericalSet],
    P -> [
        Trace( P ),
        IntegerPartition( Parts( P ){[ 1..Trace( P ) ]} - Trace( P ) ),
        IntegerPartition( Parts( P ){[ Trace( P ) + 1..Length( P ) ]} ),
    ]
);

InstallMethod( Tree, [IsIntegerPartitionOrNumericalSet], 
    function( P )
        if Length( P ) = 0 then 
            return [];
        fi;
        if Length( P ) = 1 and Genus( P ) = 1 then
            return [1];
        fi;

        return [ 
            Trace( P ), 
            Tree( DurfeeDecomposition( P )[ 2 ] ),
            Tree( DurfeeDecomposition( P )[ 3 ] ),
            ];
    end
);
