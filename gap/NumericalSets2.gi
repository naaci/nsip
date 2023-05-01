
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

InstallMethod(N, [IsNumericalSet], 
    S -> Reversed(FrobeniusNumber( S ) - S)
);

###############################################

InstallMethod( IsPerfectSemigroup, [IsNumericalSet], 
    S -> ForAll( [ 1 .. Length( S ) ], i -> S[ i + 1 ] - S[ i ] <> 2 )
);

InstallMethod( Dual, [IsNumericalSet],
    S -> NumericalSetByGaps( N( S ) )
);

InstallMethod( Dual2, [IsNumericalSet],
    S -> NumericalSet(Dual2(IntegerPartition(S)))
);

InstallMethod( IsSuperSemiSymmetric, [IsNumericalSet], function(S)
    local j;
    for j in [ 2..Length(S) ] do
        if not IsSemiSymmetric(S - S[ j ]) then
            return false;
        fi;
    od;
    return true;
end);

########################

InstallMethod( Dual3, [IsNumericalSet],
    # S -> S - NonzeroSmallElements( S )
    S -> NumericalSet( Filtered(
        [ 0..Conductor( S ) ],
        x -> IsSubset( S, x + NonzeroSmallElements( S ) )
    ))
);

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
        s -> s + DivisorsInt( s ) 
    )))
);
