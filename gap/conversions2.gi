InstallMethod( NumericalSet, [IsIntegerPartition],
    P -> NumericalSetByGaps( Gaps( P ))
);

InstallMethod( IntegerPartition, [IsNumericalSet], 
    S -> IntegerPartition( Parts( S ) )
);
