InstallMethod( EulerBijection, [IsStrict and IsIntegerPartition], function( P )
    local A, x, j, k, B;
    A := [];
    for x in Parts( P ) do
        j := 0;
        while x mod 2^( j + 1) = 0 do
            j := j + 1;
        od;
        for k in [ 1 .. 2^j ] do
            Add( A, Int( x / 2^j ));
        od;
    od;
    B := IntegerPartition( A );
    SetIsOdd( B, true );
    return B;
end);

InstallMethod( EulerBijection, [IsOdd and IsIntegerPartition], function( P )
    local A, x, i, j, B;
    A := [];
    i := 1;
    while i <= Length( P ) do
        j := 1;
        while P[ i ] = P[ i + j * 2 - 1] do
             j := j * 2;
        od;
        Add( A, P[ i ] * j);
        i := i + j;
    od;
    B := IntegerPartition( A );
    SetIsStrict( B, true );
    return B;
end);

InstallMethod( Bend, [IsStrict and IsOdd and IsIntegerPartition], function ( P )
    local A, B;
    A := ( Parts( P ) - 1 ) / 2 + [ 1 .. Length( P ) ];
    B := IntegerPartition( Concatenation( 
        A,
        AssociatedPartition( A ){[Length( A ) + 1 .. A[ 1 ]]}
    ) );
    SetIsSymmetric( B, true );
    return B;
end);

InstallMethod( UnBend, [IsSymmetric and IsIntegerPartition], function( P )
    local B;
    B := IntegerPartition( List(
        [ 1 .. Trace( P )],
        i -> ( P[ i ] - i ) * 2 + 1
    ) );
    SetIsStrict( B, true );
    SetIsOdd( B, true );
    return B;
end);

InstallGlobalFunction( PartitionGenerators, function( n )
        # for P in List(Partitions( n ),IntegerPartition) do
        local partition, known_parts, generators, partititions, i, j, k, fazlalar;
        known_parts := Set([]);
        generators := Set([]);
        partititions := Partitions( n );

        fazlalar := [];

        for k in [1..Length(partititions)] do
            for i in [ 1 .. Length(partititions) ] do
                for j in [ 1 .. Length(partititions) ] do
                    if i<>j and IsSubset(partititions[ i ],partititions[ j ]) then
                        # Add( fazlalar, j);
                        Remove( partititions, j );
                    fi;
                    if j = Length(partititions) then
                        break;
                    fi;
                od;
                if i = Length(partititions) then
                    break;
                fi;
            od;
        od;

        return partititions{Difference([1..Length(partititions)],fazlalar)};
end);

InstallMethod(Weight2, [IsStrict and IsIntegerPartition],
    P -> Sum( List( [1 .. Length( P ) - 1 ], i -> ( Length( P ) - i ) * ( P[ i ] - P[ i + 1 ] - 1 )))
);
