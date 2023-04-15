InstallMethod( Parts, [IsNumericalSet], 
    S -> AssociatedPartition( Reversed( Gaps( S ) - [ 0 .. Genus( S ) - 1 ]))
);

InstallMethod(GapsOfFirstType, [IsNumericalSet],
    S -> Intersection( Gaps( S ), FrobeniusNumber( S ) - S )
    # S -> Difference( Gaps( S ), GapsOfSecondType( S ))
);

InstallMethod(GapsOfSecondType, [IsNumericalSet],
    S -> Difference( Gaps( S ), FrobeniusNumber( S ) - S )
    # S -> Difference( Gaps( S ), GapsOfFirstType( S ))
    # S -> Intersection( Gaps( S ), Dual( S ) )
);

InstallMethod(Genus, [IsNumericalSet],
    S -> Length(Gaps( S ))
);

InstallMethod(Length, [IsNumericalSet],
    S -> Length(SmallElements( S ) ) - 1
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

InstallMethod( IsPseudoSymmetric, [IsNumericalSet], 
    S -> GapsOfSecondType( S ) = [FrobeniusNumber( S ) / 2 ]
);

InstallMethod( IsPositiveSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( Gaps( S ), FrobeniusNumber( S ) - S)
    # S -> GapsOfSecondType( S ) = []
);

InstallMethod( IsNegativeSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( FrobeniusNumber( S ) - S, Gaps( S ) )
);

InstallMethod( IsAlmostSymmetric, [IsNumericalSet],
    S -> IsSubset( PseudoFrobeniusNumbers(S), GapsOfSecondType(S) )
);

InstallMethod( Type, [IsNumericalSet],
    S -> Length( PseudoFrobeniusNumbers( S ))
);

InstallMethod( Dual, [IsNumericalSet],
    S -> NumericalSet(
        Difference( [ 0 .. Conductor( S ) ], FrobeniusNumber( S ) - S )
    )
);

# ??????????
InstallMethod( Dual2, [IsNumericalSet],
    S -> NumericalSet(Dual2(IntegerPartition(S)))
    # S -> NumericalSet( Filtered(
    #     [ 0..FrobeniusNumber( S ) ],
    #     x -> IsSubset( S, x + Difference( SmallElements( S ), [0] ) )
    # ))
);

InstallMethod( IsSemiSymmetric, [IsNumericalSet], 
    IsNegativeSemiSymmetric
);

########################

InstallMethod( PseudoFrobeniusNumbers, [IsNumericalSet],
    S -> Filtered(
        Gaps( S ), 
        x -> IsSubset( S, x + Difference( SmallElements( S ), [ 0 ])))
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

InstallMethod(Conductor, [IsNumericalSet], 
    S -> FrobeniusNumber( S ) + 1
);

InstallMethod( Multiplicity, [IsNumericalSet],
    S -> S[2]
);

