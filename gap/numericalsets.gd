#! @Chapter Numerical Sets

#! @Section Definition

#! @Label 
#! @Arguments Object
#! @Description A numerical set is a cofinite subset of $\mathbb N$ which contains $0$.
DeclareCategory( "IsNumericalSet", IsIntegerPartitionOrNumericalSet );
BindGlobal( "NumericalSetsType", 
        NewType( CollectionsFamily( CyclotomicsFamily ), 
                 IsNumericalSet ) );

#! @Section Construction of A Numerical Set

#! @Label 
#! @Arguments List
#! @Returns NumericalSet
#! @Description Calculates the minimal numerical set conatining the given numbers.
DeclareAttribute( "NumericalSet", IsListOrCollection );

#! @Label 
#! @Arguments List
#! @Returns NumericalSet
#! @Description Calculates the minimal numerical set not containing the given numbers.
DeclareGlobalFunction( "NumericalSetByGaps" );

# DeclareOperation( "Iterator", [IsNumericalSet]);

DeclareOperation("PrintObj",[IsNumericalSet]);

#! @Section Testing Element of A Numerical Sets

DeclareOperation("in",[IsInt,IsNumericalSet]);

#! @Section Enumerating Numerical Sets

DeclareOperation("[]",[IsNumericalSet,IsInt]);

# DeclareOperation("+",[IsNumericalSet,IsList]);
# DeclareOperation("-",[IsNumericalSet,IsList]);

#! @Section Adding A Number to A Numerical Set

#! @BeginGroup sum_of_numerical_set_with_number
#! @Returns NumericalSet
#! @Label
#! @Arguments NumericalSet,Integer
DeclareOperation("+",[IsNumericalSet,IsInt]);
#! @Label
#! @Arguments Integer,NumericalSet
DeclareOperation("+",[IsInt,IsNumericalSet]);
#! @EndGroup

#! @Section Subtracting A Numerical Set from A Number

#! @Returns List
#! @Label
#! @Arguments Integer,NumericalSet
DeclareOperation("-",[IsInt,IsNumericalSet]);

#! @Section Equality of Numerical Sets

DeclareOperation("=",[IsNumericalSet,IsNumericalSet]);

#! @Section Extending A Numerical Set

#! @BeginGroup Extending_numerical_set
#! @Returns NumericalSet
#! @Label
#! @Arguments NumericalSet,List
DeclareOperation("Extend",[IsNumericalSet,IsListOrCollection]);
#! @Label
#! @Arguments NumericalSet,Integer
DeclareOperation("Extend",[IsNumericalSet,IsInt]);
#! @EndGroup

#! @Section Intersection of Numerical Sets

#! 
DeclareOperation("Intersection2",[IsNumericalSet,IsNumericalSet]);

#! 
DeclareOperation("Union2",[IsNumericalSet,IsNumericalSet]);

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
DeclareAttribute( "ConjugateOf", IsNumericalSet );
DeclareAttribute( "Dual", IsNumericalSet );
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


#! @Arguments NumericalSet
DeclareAttribute( "Trace", IsNumericalSet );

#! @Arguments NumericalSet
DeclareAttribute( "Total", IsNumericalSet );

#! @Section Numerical Semigroups

#! @Arguments NumericalSet
#!
DeclareProperty( "IsNSG", IsNumericalSet );

DeclareProperty( "IsArf", IsNumericalSet );

DeclareProperty( "IsStrict", IsNumericalSet );
DeclareProperty( "IsOdd", IsNumericalSet );

DeclareAttribute( "Weight", IsNumericalSet);

#! https://doi.org/10.55730/1300-0098.3510
DeclareAttribute( "Reduce", IsNumericalSet);
DeclareAttribute( "SpecialSubdiagram", IsNumericalSet);
