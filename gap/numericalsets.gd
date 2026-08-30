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

#! @BeginGroup NumericalSet
#! @Arguments List
#! @Returns NumericalSet
DeclareAttribute( "NumericalSet", IsListOrCollection );

#! @Label 
#! @Arguments List
#! @Returns NumericalSet
DeclareGlobalFunction( "NumericalSetByGaps" );
#! @EndGroup

#! @Section Elements of Numerical Sets

# DeclareOperation("in",[IsInt,IsNumericalSet]);

#! @Label
#! @Arguments Int
#! @Returns Int
DeclareOperation("[]",[IsNumericalSet,IsInt]);

# DeclareOperation( "Iterator", [IsNumericalSet]);

#! @Section Operations on Numerical Sets

DeclareOperation("PrintObj",[IsNumericalSet]);

# DeclareOperation("+",[IsNumericalSet,IsList]);
# DeclareOperation("-",[IsNumericalSet,IsList]);

#! @BeginGroup sum_of_numerical_set_with_number
#! @Returns NumericalSet
#! @Label
#! @Arguments NumericalSet,Integer
DeclareOperation("+",[IsNumericalSet,IsInt]);
#! @Label
#! @Arguments Integer,NumericalSet
DeclareOperation("+",[IsInt,IsNumericalSet]);
#! @EndGroup

#! @Returns List
#! @Label
#! @Arguments Integer,NumericalSet
DeclareOperation("-",[IsInt,IsNumericalSet]);

# DeclareOperation("=",[IsNumericalSet,IsNumericalSet]);

#! @BeginGroup Extending_numerical_set
#! @Returns NumericalSet
#! @Label
#! @Arguments NumericalSet,List
DeclareOperation("Extend",[IsNumericalSet,IsListOrCollection]);
#! @Label
#! @Arguments NumericalSet,Integer
DeclareOperation("Extend",[IsNumericalSet,IsInt]);
#! @EndGroup

#! @Arguments NumericalSet,NumericalSet
#! @Returns NumericalSet
DeclareOperation("Intersection2",[IsNumericalSet,IsNumericalSet]);

#! @Arguments NumericalSet,NumericalSet
#! @Returns NumericalSet
DeclareOperation("Union2",[IsNumericalSet,IsNumericalSet]);

#! @Section Attributes of Numerical Sets

#! @BeginGroup
#! @Arguments NumericalSet
#! @Returns List
#! @Description The elements of a numerical set little than the conductor are called its small elements.
DeclareAttribute( "SmallElements", IsNumericalSet );
#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "NonzeroSmallElements", IsNumericalSet );
#! @EndGroup

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description Length of a numerical set is the number of its small elements.
DeclareAttribute( "Length", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
#! @Description Parts of a numerical set is equal to the parts of its corresponding integer partition.
DeclareAttribute( "Parts", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
#! @Description Gaps of a numerical set is the set of all missing natural numbers in that set.
DeclareAttribute( "Gaps", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description Genus of a numeri̇cal set is the number of its gaps.
DeclareAttribute( "Genus", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The conductor of a numeri̇cal set is the smallest element of it such that every subsequent integer is an element of it.
DeclareAttribute( "Conductor", IsNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The largest gap of a numeri̇cal set is called its Frobenius number.
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
DeclareAttribute( "Dual", IsNumericalSet );
# DeclareAttribute( "Dual3", IsNumericalSet );
#! @EndGroup

DeclareProperty( "IsSuperSemiSymmetric", IsNumericalSet );

#! @Arguments NumericalSemigroupSet
DeclareProperty( "IsPerfectSemigroup", IsNumericalSet );

#! @Arguments NumericalSet
DeclareAttribute( "CClosure", IsNumericalSet );


#! @Arguments NumericalSet
DeclareAttribute( "Trace", IsNumericalSet );

#! @Arguments NumericalSet
DeclareAttribute( "Total", IsNumericalSet );

#! @Section Numerical Semigroups

# #! @Arguments NumericalSet
# DeclareProperty( "IsNSG", IsNumericalSet );

# DeclareProperty( "IsArf", IsNumericalSet );

DeclareProperty( "IsStrict", IsNumericalSet );
DeclareProperty( "IsOdd", IsNumericalSet );

DeclareAttribute( "Weight", IsNumericalSet);

#! https://doi.org/10.55730/1300-0098.3510
DeclareAttribute( "Reduce", IsNumericalSet);
DeclareAttribute( "SpecialSubdiagram", IsNumericalSet);

DeclareAttribute( "RightParts", IsNumericalSet);
DeclareAttribute( "BelowParts", IsNumericalSet);
