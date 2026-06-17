InstallMethod( HookLengths, [IsIntegerPartitionOrNumericalSet], function( X ) 
    if Length( X ) = 0 then return []; fi;
    return Union([
        List( [ 1..Length( X ) ], 
            i -> Length( X ) + ( Parts( X )[ i ] - i )
        )],
        HookLengths( BelowParts( X ))
    );
    end);
