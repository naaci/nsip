InstallMethod(N, [IsIntegerPartition], 
    P -> Reversed( Parts( P )) + [ 0 .. Length( P ) - 1 ]
);

InstallMethod( ConjugateOf, [IsIntegerPartition], 
    P -> IntegerPartition( AssociatedPartition( Parts( P )))
    # P -> IntegerPartition( List( 
    #     [ 1 .. Genus( P ) ], 
    #     i -> Length( Filtered( 
    #         Parts( P ),
    #         # [ 1 .. Length( P ) ], 
    #         x -> i <= x
    #         # j -> i <= P[ j ]
    #         ))
    #     ))
);

InstallMethod( IsSuperSemiSymmetric, [IsIntegerPartition],
    P -> IsNSG( ConjugateOf( P ))
);

###############################################

InstallMethod(N, [IsNumericalSet], 
    S -> Reversed(FrobeniusNumber( S ) - S)
);

InstallMethod( ConjugateOf, [IsNumericalSet],
    S -> NumericalSetByGaps( N( S ) )
);

InstallMethod( IsSuperSemiSymmetric, [IsNumericalSet], function(S)
    local j;
    for j in [ 2..Length(S) ] do
        if not IsSemiSymmetric(S - S[ j ]) then
            return false;
        fi;
    od;
    return true;
end);

###############################################

InstallMethod(GapsOfFirstType, [IsIntegerPartitionOrNumericalSet], 
    X -> Intersection( Gaps( X ), N( X ) )
    # X -> Difference( Gaps( X ), GapsOfSecondType( X ) )
);

InstallMethod(GapsOfSecondType, [IsIntegerPartitionOrNumericalSet], 
    X -> Difference( Gaps( X ), N( X ) )
    # X -> Difference( Gaps( X ), GapsOfFirstType( X ) )
    # X -> Intersection( Gaps( X ), ConjugateOf( X ) )
);

InstallMethod( IsSymmetric, [IsIntegerPartitionOrNumericalSet], 
    # IsPositiveSemiSymmetric and IsNegativeSemiSymmetric
    # X -> ConjugateOf( X ) = X
    X -> Gaps( X ) = N( X )
);

InstallMethod( IsNegativeSemiSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( Gaps( X ), N( X ) )
    # X -> GapsOfFirstType( X ) = N( X )
);

InstallMethod( IsPositiveSemiSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( N( X ), Gaps( X ) )
    # X -> GapsOfSecondType( X ) = []
);

InstallMethod( IsSemiSymmetric, [IsIntegerPartitionOrNumericalSet], 
    IsPositiveSemiSymmetric
);
