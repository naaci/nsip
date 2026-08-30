#! @Chapter Integer Partitions
#! @Section Odd Stricks

#! @BeginExample
P := IntegerPartition([19,17,13,1]);;
#! @EndExample

#! @BeginExample
S := Bend(P);;
#! @EndExample

#! @BeginExample
IsOdd(P);
#! true
#! @EndExample

#! @BeginExample
IsStrict(P);
#! true
#! @EndExample

#! @BeginExample
IsSymmetric(S);
#! true
#! @EndExample

#! @BeginExample
UnBend(S) = P;
#! true
#! @EndExample

#! @BeginExample
EulerBijection(P) = P;
#! true
#! @EndExample
