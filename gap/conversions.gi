InstallMethod( NumericalSet, [IsIntegerPartition],
    P -> NumericalSet( SmallElementsAlt( P ))
);

InstallMethod( SmallElements, [IsIntegerPartitionOrNumericalSet],
    P -> [ Genus(P) .. FrobeniusNumber( P ) ] - Parts( P )
);

InstallMethod( IntegerPartition, [IsNumericalSet], 
    S -> IntegerPartition( Parts( S ) )
);

InstallMethod( Parts, [IsIntegerPartitionOrNumericalSet],
    S -> [ Genus(S) .. FrobeniusNumber( S ) ] - SmallElements( S )
);

InstallMethod( SmallElementsAlt, [IsIntegerPartition],
    X -> Union( SmallElements( X ), [ Conductor( X ) ] )
);

InstallMethod(Gaps, [IsIntegerPartition], 
    P -> Difference( [ 0 .. FrobeniusNumber( P ) ], SmallElements( P ))
    # P -> Union(Set(
    #     [1..Length(P)],
    #     i -> Set(
    #         [ 1 .. P[ i ] - P[ i + 1 ]],
    #         j -> Genus( P ) - 1 - ( P[ i ] - i ) + j
    #     )
    # ))
);
