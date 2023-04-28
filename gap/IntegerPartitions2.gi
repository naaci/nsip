InstallMethod(Gaps, [IsIntegerPartition], 
    P -> N( Dual( P ))
    # P -> Union(Set(
    #      [1..Length(P)], i -> Set(
    #         [ 1 .. P[ i ] - P[ i + 1 ]], j -> Genus( P ) - 1 - ( P[ i ] - i ) + j
    #      )
    # ))
);

###############################################

InstallMethod(N, [IsIntegerPartition], 
    P -> Reversed( Parts( P )) + [ 0 .. Length( P ) - 1 ] 
);

InstallMethod(GapsOfFirstType, [IsIntegerPartition], 
    P -> Intersection( Gaps( P ), N( P ))
    # S -> Difference( Gaps( S ), GapsOfSecondType( S ))
);

InstallMethod(GapsOfSecondType, [IsIntegerPartition], 
    P -> Difference( Gaps( P ), N( P ))
    # S -> Difference( Gaps( S ), GapsOfFirstType( S ))
    # S -> Intersection( Gaps( S ), Dual( S ) )
);

InstallMethod(Length, [IsIntegerPartition], 
    P -> Length( Parts ( P ))
);

InstallMethod(Genus, [IsIntegerPartition], function( P )
    if Length( P ) = 0 then 
        return 0;
    else 
        return First( Parts ( P )); 
    fi;
end);

InstallMethod(FrobeniusNumber, [IsIntegerPartition], 
    P -> Length( P ) + Genus( P ) - 1
);

InstallMethod( IsSymmetric, [IsIntegerPartition], 
    P -> Dual( P ) = P
);

# InstallMethod( IsPseudoSymmetric, [IsIntegerPartition], 
#     P -> IsPseudoSymmetric( NumericalSet( P ) )
# );

InstallMethod( IsNegativeSemiSymmetric, [IsIntegerPartition],
    P -> IsSubset( Gaps( P ), N( P ))
);

InstallMethod( IsPositiveSemiSymmetric, [IsIntegerPartition],
    P -> IsSubset( N( P ), Gaps( P ) )
);

InstallMethod( IsAlmostSymmetric, [IsIntegerPartition],
    P -> IsAlmostSymmetric( NumericalSet( P ) )
);

InstallMethod( IsPerfectSemigroup, [IsIntegerPartition], 
    P -> ForAll( [ 1 .. Length( P ) + 1 ], i -> P[ i ] - P[ i + 1 ] <> 1 )
);

InstallMethod( Type, [IsIntegerPartition], 
    P -> Type( NumericalSet( P ))
);

InstallMethod( Dual, [IsIntegerPartition], 
    P -> IntegerPartition( AssociatedPartition( Parts( P )))
);

InstallMethod( Dual2, [IsIntegerPartition], 
    P -> IntegerPartition( List( [ 2..Length( P ) + 1 ], i -> Genus( P ) - P[ i ] ))
);

InstallMethod( Dual3, [IsIntegerPartition], 
    P -> IntegerPartition( Dual3( NumericalSet( P )))
);

InstallMethod( IsSemiSymmetric, [IsIntegerPartition], 
    IsPositiveSemiSymmetric
);

#############################

InstallMethod( IsSuperSemiSymmetric, [IsIntegerPartition],
    P -> IsSGIntegerPartition( Dual( P ))
);

InstallMethod(Total, [IsIntegerPartition], 
    P -> Sum( Parts ( P ))
);

InstallMethod( Trace, [IsIntegerPartition], function( P )
    local i;
    i := 1;
    while true do
        if i > P[ i ] then 
            return i - 1;
        fi;
        i := i + 1;
    od;
end );

