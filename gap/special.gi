InstallMethod(Reduce, [IsNumericalSet],
    function (S)
        local i;
        i := 1;
        for i in [ 1 .. Length(S) - 1 ] do
            if S[ i + 1 ] - S[ i ] <> 1 then
                return S - S[ i ];
            fi;
        od;
    end
);

InstallMethod(Reduce, [IsIntegerPartition],
    function (P)
    local i;
    i := 2;
    for i in [ 2 .. Length(P) + 1 ] do
        if P[ i ] <> P[ 1 ] then
            return IntegerPartition( Parts( P ){[ i - 1 .. Length( P ) ]} );
        fi;
    od;
    end);

InstallMethod(SpecialSubdiagram, [IsNumericalSet],
    S -> NumericalSet( List( 
        [ 1 .. Length(Reduce( S )) ],
        function (i) 
            if Reduce( S )[ i + 1 ] - Reduce( S )[ i ] = 1 then 
                return Reduce( S )[ i ] - 1; 
            else 
                return Reduce( S )[ i ];
            fi; 
        end
        ))
);

InstallMethod(SpecialSubdiagram, [IsIntegerPartition],
    P -> IntegerPartition( List( 
        [ 1 .. Length(Reduce( P )) - 1 ],
        function (i) 
            if Reduce( P )[ i + 1 ] - Reduce( P )[ i ] = 0 then 
                return Reduce( P )[ i ] - Reduce( P )[ Length( Reduce( P ) ) ] + 1; 
            else 
                return Reduce( P )[ i ] - Reduce( P )[ Length( Reduce( P ) ) ];
            fi; 
        end
        ))
);

