InstallMethod( AperySet, [IsIntegerPartitionOrNumericalSet, IsInt], 
    function(S, n) 
        if not n in S then return fail; fi;
        return List([ 0 .. n - 1 ], i -> First( Filtered([ 0 .. FrobeniusNumber(S) + n ], s -> s in S and s mod n = i )));
    end
);

InstallMethod( KunzCoordinates, [IsIntegerPartitionOrNumericalSet, IsInt], 
    function(S, n) 
        local A;
        A := AperySet( S, n );
        return List([ 1 .. n - 1 ], i -> ( A[ i ] - i + 1 ) / n );
    end
);

