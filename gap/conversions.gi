
InstallMethod( NumericalSet, [IsIntegerPartition],
    S -> NumericalSet(
        List( [ 1..Length( S ) + 1 ], 
        i -> Genus( S ) - 1 - ( S[ i ] - i )
        )));

InstallMethod( IntegerPartition, [IsNumericalSet], 
    S -> IntegerPartition( 
        List( [ 1..Length( S ) ], 
        i -> FrobeniusNumber( S ) - Length( S ) - ( S[ i ]  - i )
        )));
