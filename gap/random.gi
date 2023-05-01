InstallGlobalFunction(RandomIntegerPartition, function(length,max)
    return IntegerPartition( List( [ 1 .. length ], i -> Random( 1, max ) ));
end);

InstallGlobalFunction(RandomNSGPartition, function(length,max)
    return Dual3(IntegerPartition( List( [ 1 .. length ], i -> Random( 1, max ) )));
end);


