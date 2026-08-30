InstallMethod( D, [IsNumericalSet],
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
);

InstallMethod( IsAlmostSymmetric, [IsNSG],
    X -> FrobeniusNumber( X ) = -1 or 2 * Genus( X ) = FrobeniusNumber( X ) + Type( X )
);

# InstallMethod( IsAlmostSymmetric, [IsNSG and IsIntegerPartition],
#     P -> IsNSG( ConjugateOf( RightParts( P )))
# );

InstallMethod( Atom, [IsIntegerPartitionOrNumericalSet],
    X -> Intersection2( X, D( X ) )
);

InstallMethod( PseudoFrobeniusNumbers, [IsIntegerPartitionOrNumericalSet],
    X -> Intersection2( Gaps( X ), D( X ) )
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
    end
);
