InstallMethod( IntegerPartition, [IsList], function( L )
    if not IsSubset(NonnegativeIntegers, L) then
        return fail;
    fi;

    return ObjectifyWithAttributes( rec( ), IntegerPartitionsType
        , Parts, Reversed( SortedList( Filtered( L, i -> not i = 0)))
        );
end );

################################################################################

InstallMethod( \=, [IsIntegerPartition,IsIntegerPartition], function( P1, P2 )
    return Parts( P1 ) = Parts( P2 );
end);

InstallMethod( \[\], [IsIntegerPartition,IsInt], function( P , i )
    if i > Length( P ) then 
        return 0;
    fi;
    return Parts( P )[ i ];
end);

InstallMethod( \{\}, [IsIntegerPartition,IsList], function( P , L )
    return List( L, i -> P[ i ] );
end);

InstallMethod( Trace, [IsIntegerPartition], 
    P -> First( Filtered( [ 1..Length( P ) + 1 ], i -> i > P[ i ] ) ) - 1
);

