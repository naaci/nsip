
InstallMethod( DurfeeDecomposition, [IsIntegerPartition],
    P -> [
        Trace( P ),
        IntegerPartition( List( [ 1..Trace( P ) - 1 ], i -> P[ i ] - Trace( P ) ) ),
        IntegerPartition( List( [ Trace( P ) + 1..Length( P ) ], i -> P[ i ] ) ),
    ]
);

InstallMethod( Tree, [IsIntegerPartition], function( P )
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
end);
