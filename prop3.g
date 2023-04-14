LoadPackage("nsip");

ss := function(S)
    local j,S1;
    for j in [2..Length(S)] do
        S1 := S - S[ j ];
        # S1 := NumericalSet( Dual( IntegerPartition( p{[j..Length(p)]} )));
        if (not GapsOfSecondType(S1) = []) then
            return false;
        fi;
    od;
    return true;
end;

ListPartitions := function( )
    local i, p, S;
    i := 1;
    while true do 
        for p in Partitions( i ) do
            S := NumericalSet(IntegerPartition( p ));
            if IsNumericalSemigroupSet( S ) then
                if not ss(S) = IsAlmostSymmetric( S ) then 
                    ViewObj( S );
                    Print(" ───── ");
                    Print("\t",IsAlmostSymmetric( S ),"\n");
                fi;
            fi;
        od;
        i := i + 1;
        Print("\r───────────────── ",FormattedString(i,4)," ─────────────────");
    od;
end;

LogTo("examples/prop3.txt");
ListPartitions();
# Print(time);
LogTo();
quit;
