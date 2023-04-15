InstallMethod( IsNumericalSemigroupSet, [IsNumericalSet],
    S -> ForAll(
        SmallElements( S ), s -> IsSubset( S, s + SmallElements( S ))
    )
);

InstallMethod( IsSymmetric, [IsNumericalSemigroupSet], function( S )
    return Length(S) = Genus(S);
end);

InstallMethod( IsPseudoSymmetric, [IsNumericalSemigroupSet], function( S )
    return Length(S) = Genus(S) + 1;
end);

InstallMethod( IsAlmostSymmetric, [IsNumericalSemigroupSet], function( S )
    if FrobeniusNumber( S ) = -1 then
        return true;
    fi;
    return 2 * Genus( S ) = FrobeniusNumber( S ) + Type( S );
end );
