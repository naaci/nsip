
InstallMethod( Parts, [IsNumericalSet], 
    S -> AssociatedPartition( Reversed( Gaps( S ) - [ 0 .. Genus( S ) - 1 ]))
);

###############################################

InstallMethod(N, [IsNumericalSet], 
    S -> FrobeniusNumber( S ) - S
);

InstallMethod(GapsOfFirstType, [IsNumericalSet],
    S -> Intersection( Gaps( S ), N( S ) )
    # S -> Difference( Gaps( S ), GapsOfSecondType( S ))
);

InstallMethod(GapsOfSecondType, [IsNumericalSet],
    S -> Difference( Gaps( S ), N( S ) )
    # S -> Difference( Gaps( S ), GapsOfFirstType( S ))
    # S -> Intersection( Gaps( S ), Dual( S ) )
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

InstallMethod( IsSymmetric, [IsNumericalSet], 
    IsPositiveSemiSymmetric and IsNegativeSemiSymmetric
);

InstallMethod( IsNegativeSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( Gaps( S ), N( S ))
);

InstallMethod( IsPositiveSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( N( S ), Gaps( S ) )
    # S -> GapsOfSecondType( S ) = []
);

InstallMethod( IsAlmostSymmetric, [IsNumericalSet],
    S -> IsSubset( PseudoFrobeniusNumbers(S), GapsOfSecondType(S) )
);

InstallMethod( IsPerfectSemigroup, [IsNumericalSet], 
    S -> ForAll( [ 1 .. Length( S ) ], i -> S[ i + 1 ] - S[ i ] <> 2 )
);

InstallMethod( Type, [IsNumericalSet],
    S -> Length( PseudoFrobeniusNumbers( S ))
);

InstallMethod( Dual, [IsNumericalSet],
    S -> NumericalSet(
        Difference( [ 0 .. Conductor( S ) ], N( S ) )
    )
);

InstallMethod( Dual2, [IsNumericalSet],
    S -> NumericalSet(Dual2(IntegerPartition(S)))
);

InstallMethod( Dual3, [IsNumericalSet],
    # S -> S - NonzeroSmallElements( S )
    S -> NumericalSet( Filtered(
        [ 0..Conductor( S ) ],
        x -> IsSubset( S, x + NonzeroSmallElements( S ) )
    ))
);

InstallMethod( IsSemiSymmetric, [IsNumericalSet], 
    IsPositiveSemiSymmetric
);

########################

InstallMethod( PseudoFrobeniusNumbers, [IsNumericalSet],
    S -> Filtered(
        Gaps( S ), 
        x -> IsSubset( S, x + NonzeroSmallElements( S )))
);

InstallMethod( Atom, [IsNumericalSet],
    S -> NumericalSet(Filtered(
        [1..Conductor( S )],
        x -> IsSubset( S, x + SmallElements( S )) # definition of IsSubset is reverse 
    ))
);

InstallMethod( SmallElements, [IsNumericalSet],
    S -> Difference( [ 0 .. Conductor( S ) ], Gaps( S ) )
);

InstallMethod( NonzeroSmallElements, [IsNumericalSet],
    S -> Difference( SmallElements( S ), [0] )
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
