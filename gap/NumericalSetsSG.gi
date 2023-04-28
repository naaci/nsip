InstallMethod( IsNumericalSemigroupSet, [IsNumericalSet],
    S -> ForAll(
        SmallElements( S ), s -> IsSubset( S, s + SmallElements( S ))
    )
);

InstallMethod( IsSymmetric, [IsNumericalSemigroupSet], function( S )
    return Length(S) = Genus(S);
end);

InstallMethod( IsIrrducible, [IsNumericalSet], 
    S -> IsSymmetric( S ) or IsPseudoSymmetric( S )
);

# InstallMethod( IsPseudoSymmetric, [IsNumericalSet], 
#     S -> GapsOfSecondType( S ) = [FrobeniusNumber( S ) / 2 ]
# );

InstallMethod( IsPseudoSymmetric, [IsNumericalSemigroupSet], function( S )
    return Length(S) = Genus(S) + 1;
end);

InstallMethod( IsNegativeSemiSymmetric, [IsNumericalSemigroupSet],
    S -> true
);

InstallMethod( IsAlmostSymmetric, [IsNumericalSemigroupSet], function( S )
    if FrobeniusNumber( S ) = -1 then
        return true;
    fi;
    return 2 * Genus( S ) = FrobeniusNumber( S ) + Type( S );
end );
