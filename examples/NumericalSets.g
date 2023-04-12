#! @Chapter Numerical Sets
#! @Section Construction of A Numerical Set

#! @BeginExample
S := NumericalSet([0,3,4,5,7]);
#! {0,3,4,5,7,->}
#! @EndExample

#! @BeginExample
T := NumericalSetByGaps([1,2,6]);
#! {0,3,4,5,7,->}
#! @EndExample

#! @BeginExample
S  = T;
#! true
#! @EndExample

#! @Section Attributes of A Numerical Set

#! @BeginExample
SmallElements(S);
#! [ 0, 3, 4, 5, 7 ]
#! @EndExample

#! @BeginExample
Genus(S);
#! 3
#! @EndExample

#! @BeginExample
Length(S);
#! 4
#! @EndExample

#! @BeginExample
FrobeniusNumber(S);
#! 6
#! @EndExample

#! @BeginExample
Conductor(S);
#! 7
#! @EndExample

#! @BeginExample
Multiplicity(S);
#! 3
#! @EndExample

#! @BeginExample
PseudoFrobeniusNumbers(S);
#! [ 6 ]
#! @EndExample

#! @BeginExample
Type(S);
#! 1
#! @EndExample

#! @BeginExample
Atom(S);
#! {0,4,5,7,->}
#! @EndExample

#! @BeginExample
Dual(S);
#! {0,4,5,7,->}
#! @EndExample

#! @BeginExample
GapsOfFirstType(S);
#! [ 1, 2, 6 ]
#! @EndExample

#! @BeginExample
GapsOfSecondType(S);
#! [  ]
#! @EndExample

#! @BeginExample
IsNegativeSemiSymmetric(S);
#! true
#! @EndExample

#! @BeginExample
IsPositiveSemiSymmetric(S);
#! false
#! @EndExample

#! @BeginExample
IsSemiSymmetric(S);
#! true
#! @EndExample

#! @BeginExample
IsSymmetric(S);
#! false
#! @EndExample

#! @BeginExample
IsAlmostSymmetric(S);
#! true
#! @EndExample
