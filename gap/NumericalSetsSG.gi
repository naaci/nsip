
InstallMethod( IsNSG, [IsNumericalSet],
    S -> ForAll(
        SmallElements( S ), s -> IsSubset( S, s + SmallElements( S ))
    )
);

InstallMethod( IsArf, [IsNumericalSet], 
    S -> IsArf( NumericalSet( S ))
);