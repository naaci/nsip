InstallMethod( NumericalSet, [IsList], function( S )
    if S = [] then
        return NumericalSetByGaps([]);
    fi;
    return NumericalSetByGaps(
        Difference( [ 1 .. Maximum( S ) - 1 ], S )
        );
end );

InstallMethod( NumericalSetByGaps, [IsList], function( G )
    return ObjectifyWithAttributes( rec( ), NumericalSetsType
        , Gaps, Intersection( G, PositiveIntegers )
        );
end );

################################################################################

InstallMethod( PrintObj, [IsNumericalSet], function( S )
    Print( 
        "{", 
        JoinStringsWithSeparator( SmallElements( S ), "," ), 
        ",->}"
    );
end );

# InstallMethod( Enumerator, [IsNumericalSet], function( S )
#     return SmallElements( S );
# end);

InstallMethod( \[\], [IsNumericalSet,IsInt], function( S , i )
    if i <= Length( SmallElements( S )) then
        return SmallElements( S )[ i ];
    fi;
    return Conductor( S ) - Length( S ) - 1 + i;
end);

InstallMethod( \=, [IsNumericalSet,IsNumericalSet], function( S1 , S2 )
    return Gaps( S1 ) = Gaps( S2 );
    # return SmallElements( S1 ) = SmallElements( S2 );
end);

InstallMethod( \in, [IsInt,IsNumericalSet], function( s , S )
    return not(s in Gaps( S )) and s in NonnegativeIntegers;
end);

# InstallMethod( Enumerator, [IsNumericalSet], function( S )
#     return ( SmallElements( S ));
# end);

InstallMethod( \+, [IsInt,IsNumericalSet], function( x , S )
    return NumericalSet( List(
        SmallElements( S ),
        s -> s + x
    ));
end);

InstallMethod( \-, [IsNumericalSet,IsInt], function( S , x )
    return NumericalSet( List(
        Filtered(SmallElements( S ), s -> s >= x),
        s -> s - x
    ));
end);

InstallMethod( \-, [IsInt,IsNumericalSet], function( x , S )
    return ( List(
        Filtered(SmallElements( S ), s -> s <= x),
        s -> x - s
    ));
end);

