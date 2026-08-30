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

    Add(flags," ");

    if IsPseudoSymmetric( P ) then
        Add(flags,"P");
    elif IsSymmetric( P ) then
        Add(flags,"S");
    elif IsAlmostSymmetric( P ) then
        Add(flags,"A");
    elif IsPositiveSemiSymmetric( P ) then
        Add(flags,"+");
    elif IsNegativeSemiSymmetric( P ) then
        Add(flags,"-");
    else
        Add(flags," ");
    fi;
    # else
    #     Add(flags,"  ");
    # fi;

    # # if IsSuperSemiSymmetric( P ) then
    # #     Add(flags," a");
    # if IsSymmetric( P ) then
    #     Add(flags," ±");
    # else
    #     if IsPositiveSemiSymmetric( P ) then
    #         Add(flags," +");
    #     elif IsNegativeSemiSymmetric( P ) then
    #         Add(flags," -");
    #     else
    #         Add(flags,"  ");
    #     fi;
    # fi;
    Add(flags," ");
    Add(flags,(Type( P )));
    Add(flags,(Trace( P )));
    return flags;
end;

InstallMethod( String, [IsNumericalSet],
    S -> Concatenation(
        "{", 
        JoinStringsWithSeparator( SmallElementsAlt( S ), "," ), 
        ",->}"
    )
);

InstallMethod( String, [IsIntegerPartition],
    P -> JoinStringsWithSeparator( 
        # Parts( P ),
        List(Parts( P ), X ->  X),
    "+")
);

InstallMethod( ViewString, [IsIntegerPartition], 
    P -> Concatenation(
        # TextAttr.0,
        JoinStringsWithSeparator( view_integer_partition( P ), "" ),
        " ",
        String( Total( P ) ),
        "=",
        # TextAttr.3,
        String( P )
        # TextAttr.reset
    )
);

# InstallMethod( FormattedString, [IsIntegerPartition], String
# );

