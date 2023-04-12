InstallMethod(Genus, [IsNumericalSet],
    S -> Length(Gaps( S ))
);

InstallMethod( SmallElements, [IsNumericalSet],
    S -> Difference( [ 0 .. Conductor( S ) ], Gaps( S ) )
);

InstallMethod(Length, [IsNumericalSet],
    S -> Length(SmallElements( S ) ) - 1
);

InstallMethod(FrobeniusNumber, [IsNumericalSet], function( S )
    if Gaps( S ) = [] then
        return -1;
    else
        return Maximum( Gaps( S ) );
    fi;
end );

InstallMethod(Conductor, [IsNumericalSet], 
    S -> FrobeniusNumber( S ) + 1
);

InstallMethod( Multiplicity, [IsNumericalSet],
    S -> S[2]
);

InstallMethod( PseudoFrobeniusNumbers, [IsNumericalSet],
    S -> Filtered(
        Gaps( S ), 
        # x -> IsSubset( S, x + Difference( SmallElements( S ), [ 0 ]))); # definition of IsSubset is reverse 
        function( x )
            local y;
            for y in [ 1..Conductor( S ) ] do 
                if y in S and not x + y in S then
                    return false;
                fi;
            od;
            return true;
        end )
);

InstallMethod( Type, [IsNumericalSet],
    S -> Length( PseudoFrobeniusNumbers( S ))
);

InstallMethod( Atom, [IsNumericalSet],
    S -> NumericalSet(Filtered(
        [1..Conductor( S )],
        x -> IsSubset( S, x + SmallElements( S ) # definition of IsSubset is reverse 
    )))
);

InstallMethod( Dual, [IsNumericalSet],
    S -> NumericalSet(
        Difference( [ 0..Conductor( S ) ], FrobeniusNumber( S ) - S )
    )
);

# ??????????
InstallMethod( Dual2, [IsNumericalSet],
    S -> NumericalSet(Dual2(IntegerPartition(S)))
    # S -> NumericalSet( Filtered(
    #     [ 0..FrobeniusNumber( S ) ],
    #     x -> IsSubset( S, x + Difference( SmallElements( S ), [0] ) )
    # ))
);

InstallMethod(GapsOfFirstType, [IsNumericalSet],
    S -> Intersection( Gaps( S ), FrobeniusNumber( S ) - S )
    # S -> Difference( Gaps( S ), GapsOfSecondType( S ))
);

InstallMethod(GapsOfSecondType, [IsNumericalSet],
    S -> Difference( Gaps( S ), FrobeniusNumber( S ) - S )
    # S -> Difference( Gaps( S ), GapsOfFirstType( S ))
    # S -> Intersection( Gaps( S ), Dual( S ) )
);

InstallMethod( IsNegativeSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( FrobeniusNumber( S ) - S, Gaps( S ) )
);

InstallMethod( IsPositiveSemiSymmetric, [IsNumericalSet],
    S -> IsSubset( Gaps( S ), FrobeniusNumber( S ) - S)
    # S -> GapsOfSecondType( S ) = []
);

InstallMethod( IsSemiSymmetric, [IsNumericalSet], 
    IsNegativeSemiSymmetric
);

InstallMethod( IsSymmetric, [IsNumericalSet], 
    IsPositiveSemiSymmetric and IsNegativeSemiSymmetric
);

InstallMethod( IsPseudoSymmetric, [IsNumericalSet], 
    S -> GapsOfSecondType( S ) = [FrobeniusNumber( S ) / 2 ]
);

InstallMethod( IsAlmostSymmetric, [IsNumericalSet],
    S -> IsSubset( PseudoFrobeniusNumbers(S), GapsOfSecondType(S) )
);
