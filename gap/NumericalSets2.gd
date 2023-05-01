#! @Chapter Numerical Sets
#! @Section Attributes of A Numerical Set

#! @Arguments NumericalSet
#! @Returns List
#! @Description SmallElements of $S$ is the subset S which are smaller than the Conductor.
DeclareAttribute( "SmallElements", IsNumericalSet );
DeclareAttribute( "NonzeroSmallElements", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "Parts", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "N", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "Gaps", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description Genus of $S$ is the number of the gaps of $S$.
DeclareAttribute( "Genus", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description Length of $S$ is the number of the small elements of $S$.
DeclareAttribute( "Length", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The conductor of $S$ is the smallest element of $S$ such that every subsequent integer is an element of $S$.
DeclareAttribute( "Conductor", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The largest gap of $S$ is called the Frobenius number of $S$.
DeclareAttribute( "FrobeniusNumber", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#!
DeclareAttribute( "Multiplicity", IsNumericalSet );

#! @Subsection Pseudo-Frobenius Numbers

#! @Subsection Duality and Symmetry

#! @BeginGroup Duality
#! @Arguments NumericalSet
#! @Returns NumericalSet
#!
DeclareAttribute( "Dual", IsNumericalSet );
DeclareAttribute( "Dual2", IsNumericalSet );
DeclareAttribute( "Dual3", IsNumericalSet );
#! @EndGroup

DeclareProperty( "IsSuperSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareOperation( "IsIrreducible", [IsNumericalSet] );

# DeclareProperty( "IsPseudoSymmetric", IsNumericalSet );

#! @Arguments NumericalSemigroupSet
#!
DeclareProperty( "IsPerfectSemigroup", IsNumericalSet );

#! @Arguments NumericalSet
#!
# DeclareProperty( "IsSuperSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareAttribute( "CClosure", IsNumericalSet );
