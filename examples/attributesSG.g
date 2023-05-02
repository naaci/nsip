#! @Chapter Common Methods
#! @Section For Numerical Semigroups And Their Integer Partitions
#! @Subsection Examples

#! @BeginExample
P := IntegerPartition( [7,2,1,1] );
#! SG  A - 4 2 11= 7+ 2+ 1+ 1
#! @EndExample

#! @BeginExample
S := NumericalSet( P );
#! {0,6,8,9,11,->}
#! @EndExample

#! @BeginExample
S  = NumericalSet( IntegerPartition( S ) );
#! true
#! @EndExample

#! @BeginExample
P  = IntegerPartition( NumericalSet( P ) );
#! true
#! @EndExample

#! @BeginExample
Gaps( S ) = Gaps( P );
#! true
#! @EndExample

#! @BeginExample
GapsOfFirstType( S ) = GapsOfFirstType( P );
#! true
#! @EndExample

#! @BeginExample
GapsOfSecondType( S ) = GapsOfSecondType( P );
#! true
#! @EndExample

#! @BeginExample
Genus( S ) = Genus( P );
#! true
#! @EndExample

#! @BeginExample
Length( S ) = Length( P );
#! true
#! @EndExample

#! @BeginExample
FrobeniusNumber( S ) = FrobeniusNumber( P );
#! true
#! @EndExample

#! @BeginExample
IsSymmetric( S ) = IsSymmetric( P );
#! true
#! @EndExample

#! @BeginExample
IsPositiveSemiSymmetric( S ) = IsPositiveSemiSymmetric( P );
#! true
#! @EndExample

#! @BeginExample
IsNegativeSemiSymmetric( S ) = IsNegativeSemiSymmetric( P );
#! true
#! @EndExample

#! @BeginExample
IsAlmostSymmetric( S ) = IsAlmostSymmetric( P );
#! true
#! @EndExample

#! @BeginExample
Type( S ) = Type( P );
#! true
#! @EndExample

#! @BeginExample
IntegerPartition( Dual( S )) = Dual( IntegerPartition( S ) );
#! true
#! @EndExample

#! @BeginExample
Dual( NumericalSet( P ) ) = NumericalSet( Dual( P ));
#! true
#! @EndExample

#! @BeginExample
IntegerPartition( Dual2( S )) = Dual2( IntegerPartition( S ) );
#! true
#! @EndExample

#! @BeginExample
Dual2( NumericalSet( P ) ) = NumericalSet( Dual2( P ));
#! true
#! @EndExample

