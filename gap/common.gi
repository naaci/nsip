InstallMethod( Length, [IsIntegerPartitionOrNumericalSet], 
    X -> Length( Parts( X ))
    # X -> Length( SmallElements( X ) ) - 1
);

InstallMethod( Genus, [IsIntegerPartitionOrNumericalSet],
    X -> Length( Gaps( X ) )
);

InstallMethod( Genus, [IsIntegerPartition],
    function( X )
        if Length( X ) = 0 then 
            return 0;
        else 
            return First( Parts( X )); 
        fi;
    end
);

InstallMethod( FrobeniusNumber, [IsIntegerPartitionOrNumericalSet],
    X -> Length( X ) + Genus( X ) - 1
);

InstallMethod( FrobeniusNumber, [IsNumericalSet],
    function( X )
        if Gaps( X ) = [] then
            return -1;
        else
            return Maximum( Gaps( X ) );
        fi;
    end
);

InstallMethod( NonzeroSmallElements, [IsIntegerPartitionOrNumericalSet],
    X -> SmallElements( X ){ [ 2 .. Length( X ) ] }
);

InstallMethod( Conductor, [IsIntegerPartitionOrNumericalSet], 
    X -> FrobeniusNumber( X ) + 1
);

InstallMethod( Multiplicity, [IsIntegerPartitionOrNumericalSet],
    X -> SmallElementsAlt( X )[2]
);

InstallMethod( CClosure, [IsIntegerPartitionOrNumericalSet], 
    X -> NumericalSetByGaps( Difference( Gaps( X ), Union(Set(
        NonzeroSmallElements( X ), 
        s -> s + PrimeDivisors( s ) 
    ))))
);

InstallMethod( Total, [IsIntegerPartitionOrNumericalSet], 
    X -> Sum( Parts ( X ))
);

InstallMethod( Weight, [IsIntegerPartitionOrNumericalSet],
    X -> Sum( List( 
        [1 .. Length( X ) - 1 ],
        i -> ( Length( X ) - i ) * (Parts( X )[ i ] - Parts( X )[ i + 1 ] )
    ))
);

InstallMethod( IsPerfectSemigroup, [IsIntegerPartitionOrNumericalSet], 
    X -> ForAll( [ 1 .. Length( X ) - 1 ], 
        i -> Parts( X )[ i ] <> Parts( X )[ i + 1 ] + 1 )
        # i -> SmallElements( X )[ i + 1 ] <> SmallElements( X )[ i ] + 2
);

InstallMethod( IsStrict, [IsIntegerPartitionOrNumericalSet], 
    X -> ForAll( [ 1 .. Length( X ) - 1 ], 
        i -> Parts( X )[ i ] <> Parts( X )[ i + 1] )
        # i -> SmallElements( X )[ i + 1 ] <> SmallElements( X )[ i ] + 1 )
);

InstallMethod( IsOdd, [IsIntegerPartitionOrNumericalSet], 
    X -> ForAll( Parts( X ), IsOddInt )
);

InstallMethod( IsNegative, [IsIntegerPartitionOrNumericalSet],
    X -> Length( X ) <= Genus( X )
);

InstallMethod( IsPositive, [IsIntegerPartitionOrNumericalSet],
    X -> Length( X ) >= Genus( X )
);

################################################################################

InstallMethod( Dual, [IsIntegerPartition], 
    P -> IntegerPartition(
        Genus( P ) - P{ [ First( Gaps( P ) ) + 1 .. Length( P ) + 1 ] }
    )
);

InstallMethod( Dual, [IsNumericalSet],
    S -> NumericalSetByGaps( 
        First( Gaps( S ) ) + FrobeniusNumber( S ) - Gaps( S )
    )
);
