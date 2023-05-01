
InstallMethod( IntegerPartition, [IsList], function( L )

    if ForAny( L, x -> not x in NonnegativeIntegers ) then
        return fail;
    fi;

    return ObjectifyWithAttributes( rec( ), IntegerPartitionsType
        , Parts, Reversed( SortedList( Filtered( L, i -> not i = 0)))
        );
end );

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

InstallMethod( ViewObj, [IsIntegerPartition], function( P )
    Print( JoinStringsWithSeparator( view_integer_partition( P ), "" ));
    Print( " ",Total( P ), "=");
    Print( P );
end );

InstallMethod( PrintObj, [IsIntegerPartition], function( P )
    Print( JoinStringsWithSeparator( List(Parts( P ), a -> FormattedString(a,2)), "+" ));
end);

InstallMethod( \=, [IsIntegerPartition,IsIntegerPartition], function( P1, P2 )
    return Parts( P1 ) = Parts( P2 );
end);

InstallMethod( \[\], [IsIntegerPartition,IsInt], function( P , i )
    if i > Length( P ) then 
        return 0;
    fi;
    return Parts( P )[ i ];
end);
