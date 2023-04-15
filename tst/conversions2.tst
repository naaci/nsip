gap> S := NumericalSet( [0,3,4,5,7] );
{0,3,4,5,7,->}
gap> P := IntegerPartition( S );
    A - 1 1 6= 3+ 1+ 1+ 1
gap> S  = NumericalSet( IntegerPartition( S ) );
true
gap> P  = IntegerPartition( NumericalSet( P ) );
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
