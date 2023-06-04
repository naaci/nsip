
InstallMethod( IntegerPartition, [IsList], function( L )
    if not IsSubset(NonnegativeIntegers, L) then
        return fail;
    fi;

    return ObjectifyWithAttributes( rec( ), IntegerPartitionsType
        , Parts, Reversed( SortedList( Filtered( L, i -> not i = 0)))
        );
end );

################################################################################

InstallMethod( \=, [IsIntegerPartition,IsIntegerPartition], function( P1, P2 )
    return Parts( P1 ) = Parts( P2 );
end);

InstallMethod( \[\], [IsIntegerPartition,IsInt], function( P , i )
    if i > Length( P ) then 
        return 0;
    fi;
    return Parts( P )[ i ];
end);

################################################################################

view_integer_partition := function(P)
    local flags;
    
    flags := [];

    if IsArf( P ) then 
        Add(flags,"Arf");
    elif IsNSG( P ) then
        Add(flags,"SG ");
    else
        Add(flags,"   ");
    fi;

    if IsSymmetric( P ) then
        Add(flags," S");
    elif IsNSG( P ) then
        if IsPseudoSymmetric( P ) then
            Add(flags," P");
        elif IsAlmostSymmetric( P ) then
            Add(flags," A");
        else
            Add(flags,"  ");
        fi;
    else
        Add(flags,"  ");
    fi;

    # if IsSuperSemiSymmetric( P ) then
    #     Add(flags," a");
    if IsSymmetric( P ) then
        Add(flags," ±");
    else
        if IsPositiveSemiSymmetric( P ) then
            Add(flags," +");
        elif IsNegativeSemiSymmetric( P ) then
            Add(flags," -");
        else
            Add(flags,"  ");
        fi;
    fi;
    Add(flags,FormattedString(Type( P ),2));
    Add(flags,FormattedString(Trace( P ),2));
    return flags;
end;

InstallMethod( ViewString, [IsIntegerPartition], 
    P -> Concatenation(
        JoinStringsWithSeparator( view_integer_partition( P ), "" ),
        " ",
        String( Total( P ) ),
        "=",
        String( P )
    )
);

InstallMethod( String, [IsIntegerPartition],
    P -> JoinStringsWithSeparator( 
        # Parts( P ),
        List(Parts( P ), X -> FormattedString( X, 2 )),
    "+")
);

################################################################################

InstallMethod(Gaps, [IsIntegerPartition], 
    P -> N( Dual( P ))
    # P -> Union(Set(
    #      [1..Length(P)], i -> Set(
    #         [ 1 .. P[ i ] - P[ i + 1 ]], j -> Genus( P ) - 1 - ( P[ i ] - i ) + j
    #      )
    # ))
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

InstallMethod(N, [IsIntegerPartition], 
    P -> Reversed( Parts( P )) + [ 0 .. Length( P ) - 1 ]
);

###############################################

InstallMethod( Dual, [IsIntegerPartition], 
    P -> IntegerPartition( AssociatedPartition( Parts( P )))
);

InstallMethod( Dual2, [IsIntegerPartition], 
    P -> IntegerPartition( List( 
        [ 1 .. Length( P ) ], 
        i -> Genus( P ) - P[ i + Gaps( P )[ 1 ] ] 
    ) )
);

InstallMethod( Dual3, [IsIntegerPartition], 
    P -> Dual3( NumericalSet( P ))
);

#############################

InstallMethod( IsSuperSemiSymmetric, [IsIntegerPartition],
    P -> IsNSG( Dual( P ))
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

################################################################################



InstallMethod( IsNSG, [IsIntegerPartition], function( P )
    local i, j, k, x, xs;

    xs := List( [ 1 .. Length( P ) ], i -> - P[ i ] + i );
    for i in [ 1 .. Length( P ) ] do
        for j in [ i .. Length( P ) ] do
            x := Genus( P ) - P[ i ] - P[ j ] - 1 + i + j;
            if x <= Length( P ) and not x in xs then
                return false;
            fi;
        od;
    od;
    # Objectify( SGIntegerPartitionsType, L );
    return true;
end );

InstallMethod( IsArf, [IsIntegerPartition], function( L )
    local j, x, xs;
    for j in [ 1 .. Length( L ) - 1 ] do
        x := L[ j ] - 2 * L[ j + 1 ] + j + 2;
        xs := List( [ j + 2 .. Length( L ) ], i -> - L[ i ] + i );
        if x <= Length( L ) and not(x in xs) then
            return false;
        fi;
    od;
    Setter( IsNSG )( L, true );
    return true;
end );

# InstallMethod( IsAlmostSymmetric, [IsNSG and IsIntegerPartition],
#     P -> IsNSG( 
#         IntegerPartition( 
#             AssociatedPartition(
#                Parts( P ){[ 2..Length( P ) ]}
#             )))
# );

InstallMethod( CClosure, [IsIntegerPartition], 
    P -> IntegerPartition( CClosure( NumericalSet( P )))
);

InstallMethod( IsPerfectSemigroup, [IsIntegerPartition], 
    P -> ForAll( [ 1 .. Length( P ) + 1 ], i -> P[ i ] - P[ i + 1 ] <> 1 )
);

InstallMethod( IsStrict, [IsIntegerPartition], 
    P -> ForAll( [ 1 .. Length( P )], i -> P[ i ] <> P[ i + 1] )
);

InstallMethod( IsOdd, [IsIntegerPartition], 
    P -> ForAll( Parts( P ), IsOddInt )
);

# PIMSLectures
# InstallMethod( \+, [IsIntegerPartition,IsIntegerPartition], function ( P1, P2 )
#     return IntegerPartition(
#         List( [ 1 .. Length( P1 ) + Length( P2 ) ] ),
#      )
# end);

InstallMethod( EulerBijection, [IsStrict and IsIntegerPartition], function( P )
    local A, x, j, k, B;
    A := [];
    for x in Parts( P ) do
        j := 0;
        while x mod 2^( j + 1) = 0 do
            j := j + 1;
        od;
        for k in [ 1 .. 2^j ] do
            Add( A, Int( x / 2^j ));
        od;
    od;
    B := IntegerPartition( A );
    SetIsOdd( B, true );
    return B;
end);

InstallMethod( EulerBijection, [IsOdd and IsIntegerPartition], function( P )
    local A, x, i, j, B;
    A := [];
    i := 1;
    while i <= Length( P ) do
        j := 1;
        while P[ i ] = P[ i + j * 2 - 1] do
             j := j * 2;
        od;
        Add( A, P[ i ] * j);
        i := i + j;
    od;
    B := IntegerPartition( A );
    SetIsStrict( B, true );
    return B;
end);

InstallMethod( Bend, [IsStrict and IsOdd and IsIntegerPartition], function ( P )
    local A, B;
    A := ( Parts( P ) - 1 ) / 2 + [ 1 .. Length( P ) ];
    B := IntegerPartition( Concatenation( 
        A,
        AssociatedPartition( A ){[Length( A ) + 1 .. A[ 1 ]]}
    ) );
    SetIsSymmetric( B, true );
    return B;
end);

InstallMethod( UnBend, [IsSymmetric and IsIntegerPartition], function( P )
    local B;
    B := IntegerPartition( List(
        [ 1 .. Trace( P )],
        i -> ( P[ i ] - i ) * 2 + 1
    ) );
    SetIsStrict( B, true );
    SetIsOdd( B, true );
    return B;
end);

