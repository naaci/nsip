InstallMethod(GapsOfFirstType, [IsNumericalSet],
    S -> Intersection( Gaps( S ), N( S ) )
    # S -> Difference( Gaps( S ), GapsOfSecondType( S ))
);

InstallMethod(GapsOfSecondType, [IsNumericalSet],
    S -> Difference( Gaps( S ), N( S ) )
    # S -> Difference( Gaps( S ), GapsOfFirstType( S ))
    # S -> Intersection( Gaps( S ), Dual( S ) )
);

InstallMethod( IsSymmetric, [IsNumericalSet], 
    # IsPositiveSemiSymmetric and IsNegativeSemiSymmetric
    # S -> Dual( S ) = S
    S -> Gaps( S ) = N( S )
);

InstallMethod( IsNegativeSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( Gaps( S ), N( S ))
    # S -> GapsOfFirstType( S ) = N( S )
);

InstallMethod( IsPositiveSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( N( S ), Gaps( S ) )
    # S -> GapsOfSecondType( S ) = []
);

InstallMethod( IsSemiSymmetric, [IsNumericalSet], 
    IsPositiveSemiSymmetric
);

InstallMethod( IsAlmostSymmetric, [IsNumericalSet],
    # S -> IsSubset( PseudoFrobeniusNumbers(S), GapsOfSecondType(S) )
    S -> IsSubset( Dual3(S), GapsOfSecondType(S) )
);

InstallMethod( Atom, [IsNumericalSet],
    S -> Intersection2( S, Dual3(S) )
    # S -> NumericalSet(Filtered(
    #     [1..Conductor( S )],
    #     x -> IsSubset( S, x + SmallElements( S )) # definition of IsSubset is reverse 
    # ))
);

InstallMethod( PseudoFrobeniusNumbers, [IsNumericalSet],
    S -> Intersection( Gaps(S), Dual3(S))
    # S -> Filtered(
    #     Gaps( S ), 
    #     x -> IsSubset( S, x + NonzeroSmallElements( S )))
);

InstallMethod( Type, [IsNumericalSet],
    S -> Length( PseudoFrobeniusNumbers( S ))
);

