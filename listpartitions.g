
ListPartitions := function( x )
    local i, p;
    for i in [ 0..x ] do 
        for p in Partitions( i ) do
            ViewObj( IntegerPartition( p ));
            Print("\n");
        od;
        i := i + 1;
        Print("──────────────────────────────────────────────────────────────────────────\n");
    od;
end;

LogTo("examples/partitions.txt");
ListPartitions(30);
Print(time);
LogTo();
quit;
