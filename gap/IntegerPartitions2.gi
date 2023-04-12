
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
