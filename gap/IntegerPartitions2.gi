InstallMethod(Gaps, [IsIntegerPartition], function( P )
    local i,j,G;
    G := [];
    for i in [1..Length(P)] do
        for j in [1..P[i]-P[i+1]] do 
            Add(G, P[1] - P[i] + j + i - 1);
        od;
    od;
    return G;
end);

InstallMethod(GapsOfFirstType, [IsIntegerPartition], function( P )
    local i,G;
    G := [];
    for i in [1..Length(P)] do
            Add(G, P[i] - i  + Length(P) );
    od;
    return G;
end);

InstallMethod(GapsOfSecondType, [IsIntegerPartition], 
    P -> Difference(Gaps( P ), GapsOfFirstType( P ))
);

InstallMethod(Genus, [IsIntegerPartition], function( P )
    if Length( P ) = 0 then 
        return 0;
    else 
        return First( Parts ( P )); 
    fi;
end);

InstallMethod(Length, [IsIntegerPartition], 
    P -> Length( Parts ( P ))
);

InstallMethod(FrobeniusNumber, [IsIntegerPartition], 
    P -> Length( P ) + Genus( P ) - 1
);

InstallMethod(Total, [IsIntegerPartition], 
    P -> Sum( Parts ( P ))
);

InstallMethod( Dual, [IsIntegerPartition], 
    P -> IntegerPartition( AssociatedPartition( Parts( P )))
);

InstallMethod( Dual2, [IsIntegerPartition], 
    P -> IntegerPartition( List( [ 2..Length( P ) + 1 ], i -> Genus( P ) - P[ i ] ))
);

InstallMethod( IsSymmetric, [IsIntegerPartition], 
    P -> Dual( P ) = P
);

InstallMethod( IsPseudoSymmetric, [IsIntegerPartition], 
    P -> IsPseudoSymmetric( NumericalSet( P ) )
);

InstallMethod( IsSuperSemiSymmetric, [IsIntegerPartition],
    P -> IsSGIntegerPartition( Dual( P ))
);

InstallMethod( IsPositiveSemiSymmetric, [IsIntegerPartition],
    P -> IsPositiveSemiSymmetric( NumericalSet( P ) )
);

InstallMethod( IsNegativeSemiSymmetric, [IsIntegerPartition],
    P -> IsNegativeSemiSymmetric( NumericalSet( P ) )
);

InstallMethod( IsAlmostSymmetric, [IsIntegerPartition],
    P -> IsAlmostSymmetric( NumericalSet( P ) )
);

InstallMethod( Trace, [IsIntegerPartition], function( P )
    local i;
    i := 1;
    while true do
        if i > P[ i ] then 
            return i - 1;
            # break;
        fi;
        i := i + 1;
    od;
end );

InstallMethod( Type, [IsIntegerPartition], 
    P -> Type( NumericalSet( P ))
);
