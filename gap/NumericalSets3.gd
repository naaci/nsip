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

#! @Arguments NumericalSet
#!
DeclareProperty( "IsSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareProperty( "IsSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareProperty( "IsPositiveSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#!
DeclareProperty( "IsNegativeSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSemigroupSet
#!
DeclareProperty( "IsAlmostSymmetric", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns NumericalSet
#!
DeclareAttribute( "Atom", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
#! @Description Given a numerical set S, the set of pseudo-Frobenius numbers of $S$ is defined by $$PF\left( S\right) =\left\{x\in \mathbb{Z}\setminus S : x+S\setminus \left\{ 0\right\} \subseteq S\right\}. $$ 
DeclareAttribute( "PseudoFrobeniusNumbers", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The type of an numerical set is the number of pseudo-Frobenius numbers of the numerical set.
# for compatibility with numericalsgps package declared as operator
DeclareOperation( "Type", [IsNumericalSet] );

