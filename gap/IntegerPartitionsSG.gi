

InstallMethod( IsSGIntegerPartition, [IsIntegerPartition], function( P )
    local i, j, k, x, xs;

    xs := List( [ 1 .. Length( P ) ], i -> - P[ i ] + i );
    for i in [ 1 .. Length( P ) ] do
        for j in [ i .. Length( P ) ] do
            x := Genus( P ) - P[ i ] - P[ j ] - 1 + i + j;
            if x <= Length( P ) and not x in xs then
                return false;
            fi;
        od;
    od;
    # Objectify( SGIntegerPartitionsType, L );
    return true;
end );

InstallMethod( IsArf, [IsIntegerPartition], function( L )
    local j, x, xs;
    for j in [ 1 .. Length( L ) - 1 ] do
        x := L[ j ] - 2 * L[ j + 1 ] + j + 2;
        xs := List( [ j + 2 .. Length( L ) ], i -> - L[ i ] + i );
        if x <= Length( L ) and not(x in xs) then
            return false;
        fi;
    od;
    Setter( IsSGIntegerPartition )( L, true );
    return true;
end );

InstallMethod( IsSymmetric, [IsSGIntegerPartition],
    P -> Genus( P ) = Length( P )
);

InstallMethod( IsPseudoSymmetric, [IsSGIntegerPartition],
    P -> Genus( P ) = Length( P ) + 1
);

InstallMethod( IsPositiveSemiSymmetric, [IsSGIntegerPartition],
    P -> true
);

InstallMethod( IsIrreducible, [IsSGIntegerPartition], 
    P -> IsSymmetric( P ) or IsPseudoSymmetric( P )
);

InstallMethod( IsAlmostSymmetric, [IsSGIntegerPartition],
    P -> IsSGIntegerPartition( 
        IntegerPartition( 
            AssociatedPartition(
               Parts( P ){[ 2..Length( P ) ]}
            )))
);

