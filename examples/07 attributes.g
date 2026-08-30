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

#! @BeginExample
NonzeroSmallElements( S );
#! [ 3, 4, 5 ]
#! @EndExample


#! @Section Attributes of Numerical Sets

#! @BeginExample
Conductor( S );
#! 7
#! @EndExample

#! @BeginExample
Multiplicity( S );
#! 3
#! @EndExample

#! @BeginExample
Length( S );
#! 4
#! @EndExample

#! @BeginExample
Gaps( S );
#! [ 1, 2, 6 ]
#! @EndExample

#! @BeginExample
FrobeniusNumber( S );
#! 6
#! @EndExample

#! @BeginExample
Genus( S );
#! 3
#! @EndExample

#! @BeginExample
CClosure( S );
#! {0,3,->}
#! @EndExample

#! @BeginExample
Total( S );
#! 6
#! @EndExample

#! @BeginExample
Trace( S );
#! 1
#! @EndExample

#! @BeginExample
Weight( S );
#! 6
#! @EndExample
