InstallGlobalFunction(RandomIntegerPartition, function(length,max)
    return IntegerPartition( List( [ 1 .. length ], i -> Random( 1, max ) ));
end);

InstallGlobalFunction(RandomIntegerNumericalSet, function(genus,max)
    return NumericalSetByGaps( List( [ 1 .. genus ], i -> Random( 1, max ) ));
end);

