LoadPackage("nsip");

ListPartitions := function( x )
    local i, p, P, P1, j;
    for i in [ 0..x ] do 
        for p in Partitions( i ) do
            P := IntegerPartition( p );
            if IsNumericalSemigroupSet( NumericalSet( P ) ) and IsAlmostSymmetric( P ) then
                for j in [2..Genus(P)] do
                    P1 := Dual( IntegerPartition( p{[j..Length(p)]} ));
                    if not IsPositiveSemiSymmetric( NumericalSet( P1 )) then 
                        ViewObj( P );
                        Print(" ───── ");
                        ViewObj( P1 );
                        Print("\n");
                    fi;
                od;
            fi;
        od;
        i := i + 1;
        Print(i," ───────────────────────────────\r");
    od;
end;

LogTo("examples/prop1.txt");
ListPartitions(100);
Print(time);
LogTo();
quit;
