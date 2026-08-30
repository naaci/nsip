#! @Chapter Conversions
#! @Section Converting An IntegerPartition to NumericalSet
#! @Subsection Examples

#! @BeginExample
S := NumericalSet( [0,3,4,5,7] );
#! {0,3,4,5,7,->}
#! @EndExample

#! @BeginExample
P := IntegerPartition( S );
#!     A 11 6=3+1+1+1
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
Parts( S ) = Parts( P );
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
IsNSG( S ) = IsNSG( P );
#! true
#! @EndExample

#! @BeginExample
IsArf( S ) = IsArf( P );
#! true
#! @EndExample

#! @BeginExample
not IsNSG( P ) or IsAlmostSymmetric( S ) = IsAlmostSymmetric( P );
#! true
#! @EndExample

#! @BeginExample
IntegerPartition( ConjugateOf( S )) = ConjugateOf( IntegerPartition( S ) );
#! true
#! @EndExample

#! @BeginExample
ConjugateOf( NumericalSet( P ) ) = NumericalSet( ConjugateOf( P ));
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
SpecialSubdiagram( NumericalSet( P ) ) = NumericalSet( SpecialSubdiagram( P ));
#! true
#! @EndExample

#! @BeginExample
IntegerPartition( SpecialSubdiagram( S ) ) = SpecialSubdiagram( IntegerPartition( S ));
#! true
#! @EndExample

#! @BeginExample
Reduce( IntegerPartition( S ) ) = IntegerPartition( Reduce( S ));
#! true
#! @EndExample

#! @BeginExample
Reduce( NumericalSet( P ) ) = NumericalSet( Reduce( P ));
#! true
#! @EndExample
