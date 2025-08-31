InstallMethod( D, [IsNumericalSet],
    # S -> S - NonzeroSmallElements( S )
    S -> NumericalSet( Filtered(
        [ 0..Conductor( S ) ],
        x -> IsSubset( S, x + NonzeroSmallElements( S ) )
    ))
);

#############################

InstallMethod( D, [IsIntegerPartition], 
    P -> D( NumericalSet( P ))
);

#############################

InstallMethod( IsAlmostSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( D( X ), GapsOfSecondType( X ) )
    # X -> IsAlmostSymmetric( NumericalSet( X ) )

);

InstallMethod( IsAlmostSymmetric, [IsNSG],
    X -> FrobeniusNumber( X ) = -1 or 2 * Genus( X ) = FrobeniusNumber( X ) + Type( X )
);

InstallMethod( Atom, [IsIntegerPartitionOrNumericalSet],
    X -> Intersection2( X, D( X ) )
    # X -> NumericalSet(Filtered(
    #     [1..Conductor( X )],
    #     x -> IsSubset( X, x + SmallElements( X ) ) # definition of IsSubset is reverse 
    # ) )
);

InstallMethod( PseudoFrobeniusNumbers, [IsIntegerPartitionOrNumericalSet],
    X -> Intersection( Gaps( X ), D( X ) )
    # X -> Filtered(
    #     Gaps( X ), 
    #     x -> IsSubset( X, x + NonzeroSmallElements( X ) ))
);

InstallMethod( Type, [IsIntegerPartitionOrNumericalSet],
    X -> Length( PseudoFrobeniusNumbers( X ) )
);

InstallMethod( Order, [ IsIntegerPartitionOrNumericalSet ], 
function(X)
    local i, Y;
    i := 0;
    Y := X;
    while Length( Y ) > 0 do
        i := i + 1;
        Y := D(Y);
    od;
    return i;
end);
