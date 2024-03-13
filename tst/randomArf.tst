gap> while true do
> P := IntegerPartition( Dual3( RandomIntegerPartition( 10, 15 )));;
> if IsArf( P ) and not IsAlmostSymmetric(P) then break; fi;
> od;
gap> S := NumericalSet( P );;
gap> S  = NumericalSet( IntegerPartition( S ) );
true
gap> P  = IntegerPartition( NumericalSet( P ) );
true
gap> P = ConjugateOf( ConjugateOf( P ) );
true
gap> S = ConjugateOf( ConjugateOf( S ) );
true
gap> P = Dual( Dual( P ) );
true
gap> S = Dual( Dual( S ) );
true
gap> Gaps( S ) = Gaps( P );
true
gap> Parts( S ) = Parts( P );
true
gap> GapsOfFirstType( S ) = GapsOfFirstType( P );
true
gap> GapsOfSecondType( S ) = GapsOfSecondType( P );
true
gap> Genus( S ) = Genus( P );
true
gap> Length( S ) = Length( P );
true
gap> FrobeniusNumber( S ) = FrobeniusNumber( P );
true
gap> IsSymmetric( S ) = IsSymmetric( P );
true
gap> IsPseudoSymmetric( S ) = IsPseudoSymmetric( P );
true
gap> IsPositiveSemiSymmetric( S ) = IsPositiveSemiSymmetric( P );
true
gap> IsNegativeSemiSymmetric( S ) = IsNegativeSemiSymmetric( P );
true
gap> IsAlmostSymmetric( S ) = IsAlmostSymmetric( P );
true
gap> IsPerfectSemigroup( S ) = IsPerfectSemigroup( P );
true
gap> Type( S ) = Type( P );
true
gap> N( S ) = N( P );
true
gap> IntegerPartition( ConjugateOf( S )) = ConjugateOf( IntegerPartition( S ) );
true
gap> ConjugateOf( NumericalSet( P ) ) = NumericalSet( ConjugateOf( P ));
true
gap> IntegerPartition( Dual( S )) = Dual( IntegerPartition( S ) );
true
gap> Dual( NumericalSet( P ) ) = NumericalSet( Dual( P ));
true
