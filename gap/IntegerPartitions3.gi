InstallMethod(GapsOfFirstType, [IsIntegerPartition], 
    P -> Intersection( Gaps( P ), N( P ))
    # S -> Difference( Gaps( S ), GapsOfSecondType( S ))
);

InstallMethod(GapsOfSecondType, [IsIntegerPartition], 
    P -> Difference( Gaps( P ), N( P ))
    # S -> Difference( Gaps( S ), GapsOfFirstType( S ))
    # S -> Intersection( Gaps( S ), Dual( S ) )
);

InstallMethod( IsSymmetric, [IsIntegerPartition], 
    # IsPositiveSemiSymmetric and IsNegativeSemiSymmetric
    # P -> Gaps( P ) = N( P )
    P -> Dual( P ) = P
);

InstallMethod( IsNegativeSemiSymmetric, [IsIntegerPartition],
    P -> IsSubset( Gaps( P ), N( P ))
);

InstallMethod( IsPositiveSemiSymmetric, [IsIntegerPartition],
    P -> IsSubset( N( P ), Gaps( P ) )
);

InstallMethod( IsSemiSymmetric, [IsIntegerPartition], 
    IsPositiveSemiSymmetric
);

InstallMethod( IsAlmostSymmetric, [IsIntegerPartition],
    P -> IsSubset( Dual3( NumericalSet( P ) ), GapsOfSecondType(P) )
    # P -> IsAlmostSymmetric( NumericalSet( P ) )
);

InstallMethod( Atom, [IsIntegerPartition],
    P -> Intersection2( P, Dual3( NumericalSet( P ) ))
    # S -> NumericalSet(Filtered(
    #     [1..Conductor( S )],
    #     x -> IsSubset( S, x + SmallElements( S )) # definition of IsSubset is reverse 
    # ))
);

InstallMethod( PseudoFrobeniusNumbers, [IsIntegerPartition],
    P -> Intersection( Gaps( P ), Dual3( NumericalSet( P )))
    # S -> Filtered(
    #     Gaps( S ), 
    #     x -> IsSubset( S, x + NonzeroSmallElements( S )))
);

InstallMethod( Type, [IsIntegerPartition],
    P -> Length( PseudoFrobeniusNumbers( P ))
);

