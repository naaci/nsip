#! @Chapter Numerical Sets
#! @Section Definition
#! A numerical set is a cofinite subset of $\mathbb N$ which contains $0$.

DeclareCategory( "IsNumericalSet", IsIntegerPartitionOrNumericalSet );
BindGlobal( "NumericalSetsType", 
        NewType( CollectionsFamily( CyclotomicsFamily ), IsNumericalSet ) 
);

#! @Section Construction of A Numerical Set
#! A numerical set can be constructed from the set of its gaps or from the set of its small elements with conductor. 
#! The following methods are for constructing a numerical set:

#! @Label 
#! @Returns The minimal numerical set containing $S\cap\mathbb N$.
#! @Arguments S
DeclareAttribute( "NumericalSet", IsListOrCollection );

#! @Label 
#! @Returns The maximal numerical set not containing $G\cap\mathbb N^+$.
#! @Arguments G
DeclareGlobalFunction( "NumericalSetByGaps" );

#! @Section Elements of Numerical Sets

#! @Label
#! @Arguments a, S
#! @Returns `true` iff $a\in S$
# DeclareOperation("in",[IsInt,IsNumericalSet]);

#! @Label
#! @Arguments i
#! @Returns $S_i\in\{S_1=0,S_2,S_3,\dots\}$
DeclareOperation("[]",[IsNumericalSet,IsInt]);

DeclareOperation( "{}", [IsNumericalSet,IsList] );

# DeclareOperation( "Iterator", [IsNumericalSet]);

#! @Section Operations on Numerical Sets

#! @BeginGroup sum_of_numerical_set_with_number
#! @Label
#! @Returns The numerical set $a+S=\{a+s\mid s\in S\}$.

#! @Arguments S, a
DeclareOperation("+",[IsNumericalSet,IsInt]);

#! @Arguments a, S
DeclareOperation("+",[IsInt,IsNumericalSet]);

#! @EndGroup

#! @Label
#! @Returns The numerical set $a-S=\{b\in\mathbb N\mid a+b\in S\}$.
#! @Arguments a, S
DeclareOperation("-",[IsInt,IsNumericalSet]);

#! @BeginGroup
#! @Returns The numerical set $S\cup A$ or $S\cup\{a\}$
#! @Label
#! @Arguments S,A
DeclareOperation("Extend",[IsNumericalSet,IsListOrCollection]);
#! @Arguments S,a
DeclareOperation("Extend",[IsNumericalSet,IsInt]);
#! @EndGroup

#! @Label
#! @Arguments S_1,S_2
#! @Returns $S_1\cap S_2$
# DeclareOperation("Intersection",[IsNumericalSet,IsNumericalSet]);
DeclareOperation("Intersection2",[IsNumericalSet,IsNumericalSet]);

#! @Label
#! @Arguments S_1,S_2
#! @Returns $S_1\cup S_2$
# DeclareOperation("Union",[IsNumericalSet,IsNumericalSet]);
DeclareOperation("Union2",[IsNumericalSet,IsNumericalSet]);

#! @Section Attributes of Numerical Sets

#! @Arguments S
#! @Returns Finite set $\mathbb N\setminus S$.
#! @Description Gaps of a numerical set is the set of all missing natural numbers in that set.
DeclareAttribute( "Gaps", IsNumericalSet );

#! @Arguments S
#! @Returns Finite set $\{s_1,s_2,\dots,s_{\ell}\}=\{s\in S\mid s \textless F_S\}$. 
#! @Description Here $F_S$ is the Frobenius number of $S$.
DeclareAttribute( "SmallElements", IsNumericalSet );

#! @Arguments S
#! @Returns Finite set $\{s_1,s_2,\dots,s_{\ell},s_{\ell+1}\}$. 
#! @Description This is the `SmallElements` method of `numericalSgps` package.
#! Here $s_{\ell+1}$ is the conductor.
DeclareAttribute( "SmallElementsAlt", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
DeclareAttribute( "Trace", IsNumericalSet );
