InstallMethod( NumericalSet, [IsListOrCollection], function( L )
    if Length( L ) = 0 then
        return NumericalSetByGaps([]);
    fi;
    return NumericalSetByGaps(
        Difference( [ 1 .. Maximum( L ) - 1 ], L )
        );
end );

InstallGlobalFunction( NumericalSetByGaps, function( G )
    return ObjectifyWithAttributes( rec( ), NumericalSetsType
        , Gaps, Intersection( G, PositiveIntegers )
        );
end );

################################################################################

InstallMethod( \=, [IsNumericalSet,IsNumericalSet], function( S1 , S2 )
    return Gaps( S1 ) = Gaps( S2 );
end);

InstallMethod( \[\], [IsNumericalSet,IsInt], function( S , i )
    if i <= Length( S ) then
        return SmallElements( S )[ i ];
    fi;
    return Conductor( S ) - Length( S ) - 1 + i;
end);

InstallMethod( \{\}, [IsNumericalSet,IsList], function( S , L )
    return List( L, i -> S[ i ] );
end);

InstallMethod( \in, [IsInt,IsNumericalSet], function( s , S )
    return not(s in Gaps( S )) and s in NonnegativeIntegers;
end);

# InstallMethod( Iterator, [ IsNumericalSet ],
#     S -> IteratorByFunctions( rec(
#         NextIterator:= function( iter )
#             iter!.counter := iter!.counter + 1;
#             if iter!.counter < Length( S ) then
#                 return SmallElements( S )[ iter!.counter ];
#             else
#                 return Conductor( S ) - Length( S ) - 1 + iter!.counter;
#             fi;
#             return;
#         end,
#         IsDoneIterator := ReturnFalse,
#         ShallowCopy := function( iter )
#             return rec(
#                 counter := iter!.counter
#                 );
#         end 
#     ))
# );

InstallMethod( \+, [IsNumericalSet,IsInt], function( S, a )
    return NumericalSet( SmallElementsAlt( S ) + a );
end);

InstallMethod( \+, [IsInt,IsNumericalSet], function( a, S )
    return S + a;
end);

InstallMethod( \-, [IsInt,IsNumericalSet], function( a , S )
    return a - Intersection( [ 0 .. a ], S );
end);

InstallMethod( Extend, [IsNumericalSet,IsListOrCollection], function( S, L )
    return NumericalSetByGaps( Difference( Gaps( S ), L ));
end);

InstallMethod( Extend, [IsNumericalSet,IsInt], function( S, a )
    return Extend( S, [a] );
end);

InstallMethod( Intersection2, [IsNumericalSet,IsNumericalSet], function(S1, S2)
    return NumericalSetByGaps(Union2(Gaps(S1),Gaps(S2)));
end);

InstallMethod( Union2, [IsNumericalSet,IsNumericalSet], function(S1, S2)
    return NumericalSetByGaps(Intersection2(Gaps(S1),Gaps(S2)));
end);

################################################################################

InstallMethod( SmallElements, [IsNumericalSet],
    X -> Difference( [ 0 .. FrobeniusNumber( X ) ], Gaps( X ) )
);

InstallMethod( SmallElementsAlt, [IsNumericalSet],
    X -> Union( SmallElements( X ), [ Conductor( X ) ] )
);

InstallMethod( Trace, [IsNumericalSet], 
    S -> First( Filtered( [ 1..Length( S ) + 1 ], i -> S[ i ] >= Genus( S ) ) ) - 1
);

