#! @Chapter Common Methods
#! @Section Examples

gap> while true do
> P := IntegerPartition( D( RandomIntegerPartition( 10, 15 )));;
> S := NumericalSet( P );;
> if not IsArf(P) then break; fi;
> od;

#! @BeginExample
S  = NumericalSet( IntegerPartition( S ) );
#! true
#! @EndExample

#! @BeginExample
P  = IntegerPartition( NumericalSet( P ) );
#! true
#! @EndExample

#! @BeginExample
IsNSG( P );
#! true
#! @EndExample

#! @BeginExample
P = ConjugateOf( ConjugateOf( P ) );
#! true
#! @EndExample

#! @BeginExample
S = ConjugateOf( ConjugateOf( S ) );
#! true
#! @EndExample

#! @BeginExample
P = Dual( Dual( P ) );
#! true
#! @EndExample

#! @BeginExample
S = Dual( Dual( S ) );
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
IsPseudoSymmetric( S ) = IsPseudoSymmetric( P );
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
IsPerfectSemigroup( S ) = IsPerfectSemigroup( P );
#! true
#! @EndExample

#! @BeginExample
Type( S ) = Type( P );
#! true
#! @EndExample

#! @BeginExample
N( S ) = N( P );
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
