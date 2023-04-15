
InstallMethod( NumericalSet, [IsIntegerPartition],
    P -> NumericalSet(
        List( [ 1..Length( P ) + 1 ], 
        i -> Genus( P ) - 1 - ( P[ i ] - i )
        )));

InstallMethod( NumericalSet2, [IsIntegerPartition],
    P -> NumericalSetByGaps( Gaps( P ))
);

InstallMethod( IntegerPartition, [IsNumericalSet], 
    S -> IntegerPartition( 
        # FrobeniusNumber( S ) - Length( S ) - ( S - [ 1 .. Length( S ) ] )
        List( [ 1..Length( S ) ], 
            i -> FrobeniusNumber( S ) - Length( S ) - ( S[ i ]  - i )
        )
        ));

InstallMethod( IntegerPartition2, [IsNumericalSet], 
    S -> IntegerPartition( Parts( S ) )
);
