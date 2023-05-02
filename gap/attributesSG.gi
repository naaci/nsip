
InstallMethod( IsSymmetric, [IsNSG],
    X -> Genus( X ) = Length( X )
);

InstallMethod( IsPseudoSymmetric, [IsNSG],
    X -> Genus( X ) = Length( X ) + 1
);

InstallMethod( IsIrreducible, [IsNSG], 
    X -> IsSymmetric( X ) or IsPseudoSymmetric( X )
);

InstallMethod( IsNegativeSemiSymmetric, [IsNSG],
    X -> true
);

InstallMethod( GapsOfFirstType, [IsNSG], N );

InstallMethod( IsAlmostSymmetric, [IsNSG],
    X -> FrobeniusNumber( X ) = -1 or 2 * Genus( X ) = FrobeniusNumber( X ) + Type( X )
);
