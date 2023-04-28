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

InstallMethod( Iterator, [ IsNumericalSet ],
    S -> IteratorByFunctions( rec(
        NextIterator:= function( iter )
            iter!.counter := iter!.counter + 1;
            if iter!.counter < Length( S ) then
                return SmallElements( S )[ iter!.counter ];
            else
                return Conductor( S ) - Length( S ) - 1 + iter!.counter;
            fi;
            return;
        end,
        IsDoneIterator := ReturnFalse,
        ShallowCopy := function( iter )
            return rec(
                counter := iter!.counter
                );
        end 
    ))
);

InstallMethod( \+, [IsNumericalSet,IsList], function( S , L )
    Print(11111,"\n");
    return NumericalSet( Union( Set(
        SmallElements( S ),
        s -> s + L
    )));
end);

InstallMethod( \+, [IsNumericalSet,IsInt], function( S, a )
    return NumericalSet( List(
        SmallElements( S ),
        s -> s + a
    ));
end);

InstallMethod( \-, [IsInt,IsNumericalSet], function( a , S )
    return List(
        Filtered(SmallElements( S ), s -> s <= a),
        s -> a - s
    );
end);

InstallMethod( \-, [IsNumericalSet,IsList], function( S , L )
    Print(-11111,"\n");
    return NumericalSet( Filtered(
        [ 0 .. Conductor( S ) ],
        x -> IsSubset( S, x + L )
    ));
end);

InstallMethod( Extend, [IsNumericalSet,IsList], function( S, L )
    return NumericalSetByGaps( Difference( Gaps( S ), L ));
end);

InstallMethod( Extend, [IsNumericalSet,IsInt], function( S, a )
    return Extend( S, [a] );
end);
