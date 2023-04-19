gap> while true do
> P := RandomIntegerPartition(1000,1000);;
> S := NumericalSet( P );;
> if not IsNumericalSemigroupSet( S ) then break; fi;
> od;
gap> S  = NumericalSet( IntegerPartition( S ) );
true
gap> P  = IntegerPartition( NumericalSet( P ) );
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
gap> IntegerPartition( Dual( S )) = Dual( IntegerPartition( S ) );
true
gap> Dual( NumericalSet( P ) ) = NumericalSet( Dual( P ));
true
gap> IntegerPartition( Dual2( S )) = Dual2( IntegerPartition( S ) );
true
gap> Dual2( NumericalSet( P ) ) = NumericalSet( Dual2( P ));
true
