InstallMethod( NumericalSet, [IsIntegerPartition],
    P -> NumericalSet(
        List( [ 1..Length( P ) + 1 ], 
        i -> Genus( P ) - 1 - ( P[ i ] - i )
        )));

InstallMethod( IntegerPartition, [IsNumericalSet], 
    S -> IntegerPartition( 
        List( [ 1..Length( S ) ], 
            i -> FrobeniusNumber( S ) - Length( S ) - ( S[ i ]  - i )
        )
        ));

