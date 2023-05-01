InstallGlobalFunction(RandomIntegerPartition, function(length,max)
    return IntegerPartition( List( [ 1 .. length ], i -> Random( 1, max ) ));
end);
