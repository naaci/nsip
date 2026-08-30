#! @Chapter Numerical Sets
#! @Section Construction of A Numerical Set
#! @Subsection Examples

#! @BeginExample
S := NumericalSetByGaps( [ 1, 2, 6 ] );
#! {0,3,4,5,7,->}
#! @EndExample

#! @BeginExample
T := NumericalSet( [ 2, 9, 10, 11 ] );
#! {0,2,9,->}
#! @EndExample

#! @Section Elements of Numerical Sets

#! @BeginExample
1 in S;
#! false
#! @EndExample

#! @BeginExample
100 in S;
#! true
#! @EndExample

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
2 + S;
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
Intersection( S, T );
#! {0,9,->}
#! @EndExample

#! @BeginExample
Union( S, T );
#! {0,2,3,4,5,7,->}
#! @EndExample

#! @Section Attributes of Numerical Sets

#! @BeginExample
Parts( S );
#! [ 3, 1, 1, 1 ]
#! @EndExample

#! @BeginExample
Gaps( S );
#! [ 1, 2, 6 ]
#! @EndExample

#! @BeginExample
SmallElements( S );
#! [ 0, 3, 4, 5 ]
#! @EndExample
 