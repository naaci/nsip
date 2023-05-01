InstallMethod( NumericalSet, [IsListOrCollection], function( L )
    if L = [] then
        return NumericalSetByGaps([]);
    fi;
    return NumericalSetByGaps(
        Difference( [ 1 .. Maximum( L ) - 1 ], L )
        );
end );

InstallMethod( NumericalSetByGaps, [IsListOrCollection], function( G )
    return ObjectifyWithAttributes( rec( ), NumericalSetsType
        , Gaps, Intersection( G, PositiveIntegers )
        );
end );

################################################################################

InstallMethod( PrintObj, [IsNumericalSet], function( S )
    Print( 
        "{", 
        JoinStringsWithSeparator( SmallElements( S ), "," ), 
        ",->}"
    );
end );

InstallMethod( \[\], [IsNumericalSet,IsInt], function( S , i )
    if i <= Length( S ) then
        return SmallElements( S )[ i ];
    fi;
    return Conductor( S ) - Length( S ) - 1 + i;
end);

InstallMethod( \=, [IsNumericalSet,IsNumericalSet], function( S1 , S2 )
    return Gaps( S1 ) = Gaps( S2 );
    # return SmallElements( S1 ) = SmallElements( S2 );
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
    return NumericalSet( SmallElements( S ) + a );
end);

InstallMethod( \+, [IsInt,IsNumericalSet], function( a, S )
    return S + a;
end);

InstallMethod( \-, [IsInt,IsNumericalSet], function( a , S )
    return a - Intersection( [ 0 .. a ], S );
end);

# InstallMethod( \+, [IsNumericalSet,IsList], function( S , L )
#     Print(11111,"\n");
#     return NumericalSet( Union( 
#         SmallElements( S ),
#         s -> s + L
#     ));
# end);

# InstallMethod( \-, [IsNumericalSet,IsList], function( S , L )
#     Print(-11111,"\n");
#     return NumericalSet( Filtered(
#         [ 0 .. Conductor( S ) ],
#         x -> IsSubset( S, x + L )
#     ));
# end);

InstallMethod( Extend, [IsNumericalSet,IsListOrCollection], function( S, L )
    return NumericalSetByGaps( Difference( Gaps( S ), L ));
end);

InstallMethod( Extend, [IsNumericalSet,IsInt], function( S, a )
    return Extend( S, [a] );
end);

InstallMethod( Intersection2, [IsNumericalSet,IsNumericalSet], function(S1, S2)
    return NumericalSetByGaps(Union(Gaps(S1),Gaps(S2)));
end);

# InstallMethod( IntersectSet, [IsNumericalSet,IsNumericalSet], function(S1, S2)
#     return NumericalSetByGaps(Union(Gaps(S1),Gaps(S2)));
# end);

