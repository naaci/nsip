#! @Chapter Integer Partitions
#! @Section Odd

#! @BeginExample
P := IntegerPartition([19,19,17,17,17,13,1,1,1,1]);;
#! @EndExample

#! @BeginExample
IsOdd(P);
#! true
#! @EndExample

#! @BeginExample
S := EulerBijection(P);;
#! @EndExample

#! @BeginExample
IsStrict(S);
#! true
#! @EndExample

#! @BeginExample
EulerBijection(S) = P;
#! true
#! @EndExample
