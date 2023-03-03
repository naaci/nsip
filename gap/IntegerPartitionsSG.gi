

InstallMethod( IsSGIntegerPartition, [IsIntegerPartition], function( L )
    local n, i, j, k, x, xs;
    Info(InfoIntPart,1,"IsSGIntegerPartition? ",L);
    n := Length( L );
    xs := List( [ 1 .. n ], i -> -L[ i ] + i );
    for i in [1..n] do
        for j in [i..n] do
            x := Genus( L ) - L[ i ] - L[ j ] - 1 + i + j;
            if x <= n and not(x in xs) then
                # Print(x," not in ",xs,"\n");
                return false;
            fi;
        od;
    od;
    # Objectify( SGIntegerPartitionsType, L );
    return true;
end );

InstallMethod( IsArf, [IsIntegerPartition], function( L )
    local n, j, x, xs;
    Info(InfoIntPart,1,"IsArf? ",L);
    n := Length( L );
    for j in [ 1 .. n-1 ] do
        x := L[ j ] - 2 * L[ j + 1 ] + j + 2;
        xs := List( [ j + 2 .. n ], i -> - L[ i ] + i );
        if x <= n and not(x in xs) then
            return false;
        fi;
    od;
    Setter(IsSGIntegerPartition)(L,true);
    return true;
end );

InstallMethod( IsSymmetric, [IsSGIntegerPartition], function( S )
    Info(InfoIntPart,1,"IsSymmetricSGIntegerPartition? ",S);
    return Genus( S ) = Length( S );
end );

InstallMethod( IsPseudoSymmetric, [IsSGIntegerPartition], function( S )
    Info(InfoIntPart,1,"IsPseudoSymmetric? ",S);
    return Genus( S ) = Length( S ) + 1;
end );

InstallMethod( IsPositiveSemiSymmetric, [IsSGIntegerPartition],
    P -> true
);

InstallMethod( IsIrreducible, [IsSGIntegerPartition], function( S )
    Info(InfoIntPart,1,"IsIrreducible? ",S);
    return IsSymmetric( S ) or IsPseudoSymmetric( S );
end );

InstallMethod( IsAlmostSymmetric, [IsSGIntegerPartition], function( L )
    Info(InfoIntPart,1,"IsAlmostSymmetric? ",L);
    return IsSGIntegerPartition( 
        IntegerPartition( 
            AssociatedPartition(
               Parts( L ){[ 2..Length( L ) ]}
            )));
end );

