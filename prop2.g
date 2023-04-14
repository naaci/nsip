LoadPackage("nsip");

ListPartitions := function( )
    local i, s, x, p, S1c, S;
    i := 1;
    while true do 
        for p in Partitions( i ) do
            S := NumericalSet( IntegerPartition( p ));
            S1c := NumericalSet( Dual( IntegerPartition( p{[2..Length(p)]} )));
            if IsNumericalSemigroupSet( S) and IsNumericalSemigroupSet( S1c) then
                for s in SmallElements( S ) do 
                    if not s = 0 then 
                        for x in GapsOfSecondType( S ) do 
                            if x + s in SmallElements(S) and not x+s = Conductor(S) then 
                                ViewObj( S );
                                Print("\t");
                                Print(x,"+",s);
                                Print("\t");
                                Print(GapsOfSecondType( S ));
                                Print("\n");
                                break;
                            fi;
                        od;
                    fi;
                od; 
            fi;
        od;
        i := i + 1;
        Print(i," ───────────────────────────────\r");
    od;
end;

LogTo("examples/prop2.txt");
ListPartitions();
Print(time);
LogTo();
quit;
