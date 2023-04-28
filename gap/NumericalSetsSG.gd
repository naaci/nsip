#! @Chapter Numerical Sets
#! @Section Numerical Semigroups

#! @Arguments NumericalSet
#!
DeclareProperty( "IsNumericalSemigroupSet", IsNumericalSet );

# DeclareSynonymAttr( "IsNumericalSemigroup",IsNumericalSemigroupSet);


#! @Arguments NumericalSemigroup
#!
DeclareProperty( "IsSymmetric", IsNumericalSemigroupSet );

#! @Arguments NumericalSemigroup
#!
DeclareProperty( "IsPseudoSymmetric", IsNumericalSemigroupSet );

#! @Arguments NumericalSemigroup
#!
DeclareProperty( "IsAlmostSymmetric", IsNumericalSemigroupSet );

