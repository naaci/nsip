#! @Chapter Integer Partitions
#! @Section Construction of An Integer Partition


#! @BeginExample
P := IntegerPartition([7,3,1,1]);
#!     A 52 12=7+3+1+1
#! @EndExample

#! @BeginExample
Gaps(P);
#! [ 1, 2, 3, 4, 6, 7, 10 ]
#! @EndExample

#! @BeginExample
GapsOfFirstType(P);
#! [ 1, 2, 10 ]
#! @EndExample

#! @BeginExample
GapsOfSecondType(P);
#! [ 3, 4, 6, 7 ]
#! @EndExample

#! @BeginExample
Genus(P);
#! 7
#! @EndExample

#! @BeginExample
Length(P);
#! 4
#! @EndExample

#! @BeginExample
FrobeniusNumber(P);
#! 10
#! @EndExample

#! @BeginExample
IsSymmetric(P);
#! false
#! @EndExample

#! @BeginExample
IsPositiveSemiSymmetric(P);
#! false
#! @EndExample

#! @BeginExample
IsNegativeSemiSymmetric(P);
#! false
#! @EndExample

#! @BeginExample
IsAlmostSymmetric(P);
#! true
#! @EndExample

#! @BeginExample
Type(P);
#! 5
#! @EndExample

#! @BeginExample
ConjugateOf(P);
#!     A 22 12=4+2+2+1+1+1+1
#! @EndExample

#! @BeginExample
Dual(P);
#!     - 24 23=7+6+6+4
#! @EndExample

#! @BeginExample
Total(P);
#! 12
#! @EndExample

#! @BeginExample
Trace(P);
#! 2
#! @EndExample

#! @BeginExample
IsNSG(P);
#! false
#! @EndExample

#! @BeginExample
IsArf(P);
#! false
#! @EndExample

#! @BeginExample
IsOdd(P);
#! true
#! @EndExample

#! @BeginExample
IsStrict(P);
#! false
#! @EndExample

#! @BeginExample
EulerBijection(EulerBijection(P))=P;
#! true
#! @EndExample
