#! @Chapter Numerical Sets
#! @Section Attributes of A Numerical Set

#! @Arguments NumericalSet
#! @Returns List
#! @Description SmallElements of $S$ is the subset S which are smaller than the Conductor.
DeclareAttribute( "SmallElements", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "Parts", IsNumericalSet );

#! @Arguments Gaps
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

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The type of an numerical set is the number of pseudo-Frobenius numbers of the numerical set.
# for compatibility with numericalsgps package declared as operator
DeclareOperation( "Type", [IsNumericalSet] );

#! @Arguments NumericalSet
#! @Returns List
#! @Description Given a numerical set S, the set of pseudo-Frobenius numbers of $S$ is defined by $$PF\left( S\right) =\left\{x\in \mathbb{Z}\setminus S : x+S\setminus \left\{ 0\right\} \subseteq S\right\}. $$ 
DeclareAttribute( "PseudoFrobeniusNumbers", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
#! @Description The set of gaps of the first type is  
#!  $$N\left( S\right) =\left\{ x\in \mathbb{N}
#!  \setminus S:  F\left( S\right) -x\in S\right\} $$
DeclareAttribute( "GapsOfFirstType", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
#! @Description The set of gaps of the second type gaps $L\left( S\right)$
#!  consists of the remaining gap numbers, i.e., $L(S)=G(S)\setminus N(S)$.
DeclareAttribute( "GapsOfSecondType", IsNumericalSet );

#! @Subsection Duality and Symmetry

#! @Arguments NumericalSet
#! @Returns NumericalSet
#!
DeclareAttribute( "Dual", IsNumericalSet );
DeclareAttribute( "Dual2", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns NumericalSet
#!
DeclareAttribute( "Atom", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#! @Description Numerical monoids are always negative semisymmetric \cite{Antokoletz2002}
DeclareProperty( "IsNegativeSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareProperty( "IsSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareProperty( "IsSymmetric", IsNumericalSet );

DeclareProperty( "IsPseudoSymmetric", IsNumericalSet );

#! @Arguments NumericalSemigroupSet
#!
DeclareProperty( "IsAlmostSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
# DeclareProperty( "IsSuperSemiSymmetric", IsNumericalSet );

