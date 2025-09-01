LoadPackage("nsip");

counter := 0;

ListNSG := function( P )
    local i, j, Y;

    counter := counter + 1;
    Print(counter, "\tG=", Genus( P ), "\t" , ( NumericalSet( P )), "\n" );

    if Genus( P ) = 10 then
        return;
    fi;

    for i in [ Length( P ) .. Genus( P ) + 1 ] do 
        if i = 0 then
            continue;
        fi;
        Y := IntegerPartition( List( [ 1 .. i ], j -> P[ j ] + 1 ) );
        # if IsNegativeSemiSymmetric( Y ) then
        if IsSubset( Gaps( P ), N( Y ){[ 1 .. Length( Y ) - 1 ]} ) then
            ListNSG( Y );
        fi;
    od;
end;

ListNSG( IntegerPartition( [] ));
QUIT;

# For implementation of numerical semigroups in the "numericalsgps" package see:
#   https://docs.gap-system.org/pkg/numericalsgps/doc/chap5.html
#   https://doi.org/10.1007/978-1-4419-0160-6_3
#   https://doi.org/10.1007/s00233-007-9014-8
