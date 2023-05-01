#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfFirstType", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "GapsOfSecondType", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegativeSemiSymmetric", IsIntegerPartition );
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsAlmostSymmetric", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareAttribute( "Atom", IsIntegerPartition );

#! @Arguments IntegerPartition
#!
DeclareAttribute( "PseudoFrobeniusNumbers", IsIntegerPartition );

#! @Arguments IntegerPartition
#! @Returns Integer
#!
DeclareOperation( "Type", [IsIntegerPartition] );

