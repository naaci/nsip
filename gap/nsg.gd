#! @Chapter Conversions
#! @Section NSG

#! @Arguments IsNSG
#!
DeclareProperty( "IsSymmetric", IsNSG );

#! @Arguments IsNSG
#!
DeclareProperty( "IsNegativeSemiSymmetric", IsNSG );

#! @Arguments IsNSG
#!
DeclareProperty( "IsPseudoSymmetric", IsNSG );

#! @Arguments IsNSG
#!
DeclareOperation( "IsIrreducible", [IsNSG] );

#! @Arguments IsNSG
#!
DeclareProperty( "IsAlmostSymmetric", IsNSG );

#! @Arguments IsNSG
#!
DeclareAttribute( "GapsOfFirstType", IsNSG );
