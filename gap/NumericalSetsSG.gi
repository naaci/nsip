InstallMethod( IsNumericalSemigroupSet, [IsNumericalSet], function( S )
    local s1,s2,s;
    for s1 in SmallElements( S ) do
        for s2 in SmallElements( S ) do
            s := s1 + s2;
            if s < Conductor( S ) and not(s in SmallElements( S )) then
                return false;
            fi;
        od;
    od;
    # Objectify(NumericalSemigroupsType, S );
    return true;
end );

InstallMethod( IsSymmetric, [IsNumericalSemigroupSet], function( S )
    return Length(S) = Genus(S);
end);

InstallMethod( IsPseudoSymmetric, [IsNumericalSemigroupSet], function( S )
    return Length(S) = Genus(S) + 1;
end);

InstallMethod( IsAlmostSymmetric, [IsNumericalSemigroupSet], function( S )
    return 2 * Genus( S ) = FrobeniusNumber( S ) + Type( S );
end );
