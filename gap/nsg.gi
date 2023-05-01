
InstallMethod( IsSymmetric, [IsNSG],
    P -> Genus( P ) = Length( P )
);

InstallMethod( IsPseudoSymmetric, [IsNSG],
    P -> Genus( P ) = Length( P ) + 1
);

InstallMethod( IsIrreducible, [IsNSG], 
    P -> IsSymmetric( P ) or IsPseudoSymmetric( P )
);

InstallMethod( IsNegativeSemiSymmetric, [IsNSG],
    P -> true
);

InstallMethod( GapsOfFirstType, [IsNSG], N );

InstallMethod( IsAlmostSymmetric, [IsNSG], function( S )
    if FrobeniusNumber( S ) = -1 then
        return true;
    fi;
    return 2 * Genus( S ) = FrobeniusNumber( S ) + Type( S );
end );
