#! @Chapter Numerical Sets
#! @Section Construction of A Numerical Set
#! @Subsection Examples

#! @BeginExample
S := NumericalSet( [ 0, 3, 4, 5, 7 ] );
#! {0,3,4,5,7,->}
#! @EndExample

#! @Section Attributes of Numerical Sets
#! @BeginExample
Gaps( S );
#! [ 1, 2, 6 ]
#! @EndExample

#! @Section Construction of A Numerical Set
#! @BeginExample
T := NumericalSetByGaps( [ 1, 6, 7 ] );
#! {0,2,3,4,5,8,->}
#! @EndExample

#! @Section Elements of Numerical Sets

#! @BeginExample
S[ 3 ];
#! 4
#! @EndExample

#! @BeginExample
S[ 10 ];
#! 12
#! @EndExample

#! @Section Operations on Numerical Sets

#! @BeginExample
S + 2;
#! {0,2,5,6,7,9,->}
#! @EndExample

#! @BeginExample
2 - S;
#! [ 2 ]
#! @EndExample

#! @BeginExample
Extend( S, 2);
#! {0,2,3,4,5,7,->}
#! @EndExample

#! @BeginExample
Extend( S, [ 2, 6 ]);
#! {0,2,->}
#! @EndExample

#! @BeginExample
Intersection2( S, T );
#! {0,3,4,5,8,->}
#! @EndExample

#! @BeginExample
Union2( S, T );
#! {0,2,3,4,5,7,->}
#! @EndExample

#! @Section Attributes of Numerical Sets

#! @BeginExample
SmallElements( S );
#! [ 0, 3, 4, 5, 7 ]
#! @EndExample

#! @BeginExample
NonzeroSmallElements( S );
#! [ 3, 4, 5, 7 ]
#! @EndExample

#! @BeginExample
Length( S );
#! 4
#! @EndExample

#! @BeginExample
Parts( S );
#! [ 3, 1, 1, 1 ]
#! @EndExample

#! @BeginExample
Gaps( S );
#! [ 1, 2, 6 ]
#! @EndExample

#! @BeginExample
Genus( S );
#! 3
#! @EndExample

#! @BeginExample
Conductor( S );
#! 7
#! @EndExample

#! @BeginExample
FrobeniusNumber( S );
#! 6
#! @EndExample

#! @BeginExample
Multiplicity( S );
#! 3
#! @EndExample

