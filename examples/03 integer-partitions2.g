#! @Chapter Integer Partitions
#! @Section Construction of An Integer Partition


#! @BeginExample
P := IntegerPartition([7,2,1,1]);
#! SG  A 42 11=7+2+1+1
#! @EndExample

#! @BeginExample
Gaps(P);
#! [ 1, 2, 3, 4, 5, 7, 10 ]
#! @EndExample

#! @BeginExample
GapsOfFirstType(P);
#! [ 1, 2, 4, 10 ]
#! @EndExample

#! @BeginExample
GapsOfSecondType(P);
#! [ 3, 5, 7 ]
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
IsPseudoSymmetric(P);
#! false
#! @EndExample

#! @BeginExample
IsPositiveSemiSymmetric(P);
#! false
#! @EndExample

#! @BeginExample
IsNegativeSemiSymmetric(P);
#! true
#! @EndExample

#! @BeginExample
IsAlmostSymmetric(P);
#! true
#! @EndExample

#! @BeginExample
Type(P);
#! 4
#! @EndExample

#! @BeginExample
ConjugateOf(P);
#!     A 12 11=4+2+1+1+1+1+1
#! @EndExample

#! @BeginExample
Dual(P);
#!       24 24=7+6+6+5
#! @EndExample

#! @BeginExample
Total(P);
#! 11
#! @EndExample

#! @BeginExample
Trace(P);
#! 2
#! @EndExample

#! @BeginExample
IsNSG(P);
#! true
#! @EndExample

#! @BeginExample
IsArf(P);
#! false
#! @EndExample
