#! @Chapter Numerical Sets 2
#! @Section Construction of A Numerical Set
#! @Subsection Examples

#! @BeginExample
S := NumericalSet([3,8]);
#! {0,3,8,->}
#! @EndExample

#! @BeginExample
SmallElementsAlt( S );
#! [ 0, 3, 8 ]
#! @EndExample

#! @BeginExample
Gaps( S );
#! [ 1, 2, 4, 5, 6, 7 ]
#! @EndExample

#! @BeginExample
GapsOfFirstType( S );
#! [ 4, 7 ]
#! @EndExample

#! @BeginExample
GapsOfSecondType( S );
#! [ 1, 2, 5, 6 ]
#! @EndExample

#! @BeginExample
Genus( S );
#! 6
#! @EndExample

#! @BeginExample
Length( S );
#! 2
#! @EndExample

#! @BeginExample
FrobeniusNumber( S );
#! 7
#! @EndExample

#! @BeginExample
IsSymmetric( S );
#! false
#! @EndExample

#! @BeginExample
IsPositiveSemiSymmetric( S );
#! false
#! @EndExample

#! @BeginExample
IsNegativeSemiSymmetric( S );
#! true
#! @EndExample

#! @BeginExample
IsAlmostSymmetric( S );
#! false
#! @EndExample

#! @BeginExample
Type( S );
#! 3
#! @EndExample

#! @BeginExample
ConjugateOf( S );
#! {0,1,2,3,5,6,8,->}
#! @EndExample

#! @BeginExample
Dual( S );
#! {0,5,8,->}
#! @EndExample

#! @BeginExample
IsSemiSymmetric( S );
#! false
#! @EndExample

#! @BeginExample
PseudoFrobeniusNumbers( S );
#! [ 5, 6, 7 ]
#! @EndExample

#! @BeginExample
Atom( S );
#! {0,8,->}
#! @EndExample

#! @BeginExample
SmallElementsAlt( S );
#! [ 0, 3, 8 ]
#! @EndExample

#! @BeginExample
Conductor( S );
#! 8
#! @EndExample

#! @BeginExample
Multiplicity( S );
#! 3
#! @EndExample

#! @BeginExample
CClosure( S );
#! {0,3,6,8,->}
#! @EndExample
