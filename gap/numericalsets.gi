

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
    # return SmallElements( S1 ) = SmallElements( S2 );
end);

InstallMethod( \[\], [IsNumericalSet,IsInt], function( S , i )
    if i <= Length( S ) then
        return SmallElements( S )[ i ];
    fi;
    return Conductor( S ) - Length( S ) - 1 + i;
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
    return NumericalSetByGaps(Union2(Gaps(S1),Gaps(S2)));
end);

InstallMethod( Union2, [IsNumericalSet,IsNumericalSet], function(S1, S2)
    return NumericalSetByGaps(Intersection2(Gaps(S1),Gaps(S2)));
end);

################################################################################

InstallMethod( String, [IsNumericalSet],
    S -> Concatenation(
        "{", 
        JoinStringsWithSeparator( SmallElements( S ), "," ), 
        ",->}"
    )
);

################################################################################


InstallMethod( Parts, [IsNumericalSet], 
    S -> AssociatedPartition( Reversed( Gaps( S ) - [ 0 .. Genus( S ) - 1 ]))
);

InstallMethod(Length, [IsNumericalSet],
    S -> Length(SmallElements( S ) ) - 1
);

InstallMethod(Genus, [IsNumericalSet],
    S -> Length(Gaps( S ))
);

InstallMethod(FrobeniusNumber, [IsNumericalSet], function( S )
    if Gaps( S ) = [] then
        return -1;
    else
        return Maximum( Gaps( S ) );
    fi;
end );

# InstallMethod(N, [IsNumericalSet], 
#     S -> Reversed(FrobeniusNumber( S ) - S)
# );

###############################################

# InstallMethod( ConjugateOf, [IsNumericalSet],
#     S -> NumericalSetByGaps( N( S ) )
# );

InstallMethod( Dual, [IsNumericalSet],
    S -> NumericalSetByGaps( 
        Gaps( S )[ 1 ] + FrobeniusNumber( S ) - Gaps( S )
    )
    # S -> NumericalSet( N( S ) + Gaps( S )[ 1 ] )
);

# InstallMethod( Dual3, [IsNumericalSet],
#     # S -> S - NonzeroSmallElements( S )
#     S -> NumericalSet( Filtered(
#         [ 0..Conductor( S ) ],
#         x -> IsSubset( S, x + NonzeroSmallElements( S ) )
#     ))
# );

########################

# InstallMethod( IsSuperSemiSymmetric, [IsNumericalSet], function(S)
#     local j;
#     for j in [ 2..Length(S) ] do
#         if not IsSemiSymmetric(S - S[ j ]) then
#             return false;
#         fi;
#     od;
#     return true;
# end);


########################

InstallMethod( SmallElements, [IsNumericalSet],
    S -> Difference( [ 0 .. Conductor( S ) ], Gaps( S ) )
);

InstallMethod( NonzeroSmallElements, [IsNumericalSet],
    S -> Difference( [ 1 .. Conductor( S ) ], Gaps( S ) )
    # S -> Difference( SmallElements( S ), [0] )
);

InstallMethod(Conductor, [IsNumericalSet], 
    S -> FrobeniusNumber( S ) + 1
);

InstallMethod( Multiplicity, [IsNumericalSet],
    S -> S[2]
);

InstallMethod( CClosure, [IsNumericalSet], 
    S -> Extend( S, Union(Set(
        NonzeroSmallElements( S ), 
        s -> s + PrimeDivisors( s ) 
    )))
);


#############################

InstallMethod(Total, [IsNumericalSet], 
    S -> Total( IntegerPartition( S ))
);

InstallMethod( Trace, [IsNumericalSet], 
    S -> Trace( IntegerPartition( S ))
);

#############################

InstallMethod( IsNSG, [IsNumericalSet],
    S -> ForAll(
        SmallElements( S ), s -> IsSubset( S, s + SmallElements( S ))
    )
);

InstallMethod( IsArf, [IsNumericalSet], 
    S -> IsArf( IntegerPartition( S ))
);


InstallMethod( IsPerfectSemigroup, [IsNumericalSet], 
    S -> ForAll( [ 1 .. Length( S ) ], i -> S[ i + 1 ] - S[ i ] <> 2 )
);

InstallMethod( IsStrict, [IsNumericalSet], 
    S -> ForAll( [ 1 .. Length( S ) ], i -> S[ i + 1 ] - S[ i ] <> 1 )
);

InstallMethod( IsOdd, [IsNumericalSet], 
    S -> Length( S ) = 0 or 
    ForAll( 
        [ 1 .. Length( S ) - 1 ], 
        i -> (S[ i + 1 ] - S[ i ]) mod 2 = 1
        )
    and 
    (Length( S ) - Conductor( S )) mod 2 = 1
);

InstallMethod( Weight, [IsNumericalSet],
    S -> Weight( IntegerPartition( S ))
);

InstallMethod(Reduce, [IsNumericalSet],
    function (S)
    local i;
    i := 1;
    for i in [ 1 .. Length(S) + 1 ] do
        if S[ i + 1 ] - S[ i ] <> 1 then
            break;
        fi;
    od;
    return S - S[ i ];
    end);

InstallMethod(SpecialSubdiagram, [IsNumericalSet],
    S -> NumericalSet( List( 
        [ 1 .. Length(Reduce( S )) ],
        function (i) if Reduce( S )[ i + 1 ] - Reduce( S )[ i ] = 1 then 
            return Reduce( S )[ i ] - 1; 
        else 
            return Reduce( S )[ i ];
        fi; end
        ))
);
