InstallMethod(N, [IsIntegerPartition], 
    P -> Reversed( Parts( P )) + [ 0 .. Length( P ) - 1 ]
);

InstallMethod(N, [IsNumericalSet], 
    S -> Reversed(FrobeniusNumber( S ) - S)
);

InstallMethod( ConjugateOf, [IsIntegerPartition], 
    P -> IntegerPartition( AssociatedPartition( Parts( P )))
);

InstallMethod( ConjugateOf, [IsNumericalSet],
    S -> NumericalSetByGaps( N( S ) )
);

DeclareSynonym( "Conjugate", ConjugateOf);

###############################################

InstallMethod(GapsOfFirstType, [IsIntegerPartitionOrNumericalSet], 
    X -> Intersection( Gaps( X ), N( X ) )
    # X -> Difference( Gaps( X ), GapsOfSecondType( X ) )
);

InstallMethod( GapsOfFirstType, [IsNSG], N );

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

InstallMethod( IsSymmetric, [IsNSG],
    X -> Genus( X ) = Length( X )
);

InstallMethod( IsPseudoSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> Gaps( X ) = Union( N( X ) , [ FrobeniusNumber( X ) /2 ] )
);

InstallMethod( IsPseudoSymmetric, [IsNSG],
    X -> Genus( X ) = Length( X ) + 1
);

InstallMethod( IsIrreducible, [IsIntegerPartitionOrNumericalSet], 
    X -> IsSymmetric( X ) or IsPseudoSymmetric( X )
);

InstallMethod( IsNegativeSemiSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( Gaps( X ), N( X ) )
    # X -> GapsOfFirstType( X ) = N( X )
);

InstallMethod( IsNegativeSemiSymmetric, [IsNSG],
    X -> true
);

InstallMethod( IsPositiveSemiSymmetric, [IsIntegerPartitionOrNumericalSet],
    X -> IsSubset( N( X ), Gaps( X ) )
    # X -> GapsOfSecondType( X ) = []
);

InstallMethod( IsSemiSymmetric, [IsIntegerPartitionOrNumericalSet], 
    IsPositiveSemiSymmetric
);

InstallMethod( IsNSG, [IsIntegerPartitionOrNumericalSet], 
    X -> Length( X ) = 0 or IsNegativeSemiSymmetric( X ) and IsNSG( BelowParts( X ) )
);

InstallMethod( IsArf, [IsIntegerPartitionOrNumericalSet], 
    X -> Length( X ) = 0 or IsNSG( X ) and IsArf( RightParts( X ) )
);

# InstallMethod( IsNSG, [IsNumericalSet],
#     S -> ForAll(
#         SmallElements( S ), s -> IsSubset( S, s + SmallElements( S ))
#     )
# );
