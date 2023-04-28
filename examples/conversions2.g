#! @Chapter Conversions 
#! @Section Numerical Sets and Integer Partitions

#! @BeginExample
P := IntegerPartition( [7,2,1,1] );
#! SG  A - 4 2 11= 7+ 2+ 1+ 1
S := NumericalSet( P );
#! {0,6,8,9,11,->}
S  = NumericalSet( IntegerPartition( S ) );
#! true
P  = IntegerPartition( NumericalSet( P ) );
#! true
Gaps( S ) = Gaps( P );
#! true
GapsOfFirstType( S ) = GapsOfFirstType( P );
#! true
GapsOfSecondType( S ) = GapsOfSecondType( P );
#! true
Genus( S ) = Genus( P );
#! true
Length( S ) = Length( P );
#! true
FrobeniusNumber( S ) = FrobeniusNumber( P );
#! true
IsSymmetric( S ) = IsSymmetric( P );
#! true
IsPositiveSemiSymmetric( S ) = IsPositiveSemiSymmetric( P );
#! true
IsNegativeSemiSymmetric( S ) = IsNegativeSemiSymmetric( P );
#! true
IsAlmostSymmetric( S ) = IsAlmostSymmetric( P );
#! true
Type( S ) = Type( P );
#! true
IntegerPartition( Dual( S )) = Dual( IntegerPartition( S ) );
#! true
Dual( NumericalSet( P ) ) = NumericalSet( Dual( P ));
#! true
IntegerPartition( Dual2( S )) = Dual2( IntegerPartition( S ) );
#! true
Dual2( NumericalSet( P ) ) = NumericalSet( Dual2( P ));
#! true
#! @EndExample

