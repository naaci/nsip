InstallMethod( Dual3, [IsNumericalSet],
    # S -> S - NonzeroSmallElements( S )
    S -> NumericalSet( Filtered(
        [ 0..Conductor( S ) ],
        x -> IsSubset( S, x + NonzeroSmallElements( S ) )
    ))
);

#############################

InstallMethod( Dual3, [IsIntegerPartition], 
    P -> Dual3( NumericalSet( P ))
);

#############################

InstallMethod( IsAlmostSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( Dual3( X ), GapsOfSecondType( X ) )
    # X -> IsAlmostSymmetric( NumericalSet( X ) )

);

InstallMethod( IsAlmostSymmetric, [IsNSG],
    X -> FrobeniusNumber( X ) = -1 or 2 * Genus( X ) = FrobeniusNumber( X ) + Type( X )
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

InstallMethod( Order, [ IsIntegerPartitionOrNumericalSet ], 
function(X)
    local i, D;
    i := 0;
    D := X;
    while Length( D ) > 0 do
        i := i + 1;
        D := Dual3(D);
    od;
    return i;
end);
