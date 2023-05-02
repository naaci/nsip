InstallMethod(GapsOfFirstType, [IsIntegerPartitionOrNumericalSet], 
    X -> Intersection( Gaps( X ), N( X ) )
    # X -> Difference( Gaps( X ), GapsOfSecondType( X ) )
);

InstallMethod(GapsOfSecondType, [IsIntegerPartitionOrNumericalSet], 
    X -> Difference( Gaps( X ), N( X ) )
    # X -> Difference( Gaps( X ), GapsOfFirstType( X ) )
    # X -> Intersection( Gaps( X ), Dual( X ) )
);

InstallMethod( IsSymmetric, [IsIntegerPartitionOrNumericalSet], 
    # IsPositiveSemiSymmetric and IsNegativeSemiSymmetric
    # X -> Dual( X ) = X
    X -> Gaps( X ) = N( X )
);

InstallMethod( IsNegativeSemiSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( Gaps( X ), N( X ) )
    # X -> GapsOfFirstType( X ) = N( X )
);

InstallMethod( IsPositiveSemiSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( N( X ), Gaps( X ) )
    # X -> GapsOfSecondType( X ) = []
);

InstallMethod( IsNegative, [IsIntegerPartitionOrNumericalSet],
    X -> Length( X ) <= Genus( X )
);

InstallMethod( IsPositive, [IsIntegerPartitionOrNumericalSet],
    X -> Genus( X ) <= Length( X ) 
);

InstallMethod( IsSemiSymmetric, [IsIntegerPartitionOrNumericalSet], 
    IsPositiveSemiSymmetric
);

InstallMethod( IsAlmostSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( Dual3( X ), GapsOfSecondType( X ) )
    # X -> IsAlmostSymmetric( NumericalSet( X ) )

);

InstallMethod( Atom, [IsIntegerPartitionOrNumericalSet],
    X -> Intersection2( X, Dual3( X ) )
    # X -> NumericalSet(Filtered(
    #     [1..Conductor( X )],
    #     x -> IsSubset( X, x + SmallElements( X ) ) # definition of IsSubset is reverse 
    # ) )
);

InstallMethod( PseudoFrobeniusNumbers, [IsIntegerPartitionOrNumericalSet],
    X -> Intersection( Gaps( X ), Dual3( X ) )
    # X -> Filtered(
    #     Gaps( X ), 
    #     x -> IsSubset( X, x + NonzeroSmallElements( X ) ))
);

InstallMethod( Type, [IsIntegerPartitionOrNumericalSet],
    X -> Length( PseudoFrobeniusNumbers( X ) )
);

