#! @Chapter Common Methods
#! @Section For Numerical Sets And Integer Partitions
#! @Subsection Examples

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
ConjugateOf(S);
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
#! false
#! @EndExample

#! @BeginExample
IsPositiveSemiSymmetric(S);
#! true
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
