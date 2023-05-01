#! @Chapter Numerical Sets
#! @Section Category of Numerical Sets
#! @Description A numerical set is a cofinite subset of $\mathbb N$ which contains $0$.

# DeclareRepresentation( "IsNumericalSetRep", IsAttributeStoringRep, [] );

#! 
DeclareCategory( "IsNumericalSet", IsAttributeStoringRep );
BindGlobal( "NumericalSetsType", 
        NewType( CollectionsFamily( CyclotomicsFamily ), 
                 IsNumericalSet ) );

#! @Section Construction of A Numerical Set
#! @Subsection NumericalSet

#! @Arguments List
#! @Returns NumericalSet
#! @Description The minimal numerical set conatining the given elements.
DeclareAttribute( "NumericalSet", IsListOrCollection );

#! @Subsection NumericalSetByGaps

#! @Arguments List
#! @Returns NumericalSet
#! @Description The minimal numerical set with the gaps given.
DeclareAttribute( "NumericalSetByGaps", IsListOrCollection );

# DeclareOperation( "Iterator", [IsNumericalSet]);

DeclareOperation("PrintObj",[IsNumericalSet]);

DeclareOperation("in",[IsInt,IsNumericalSet]);

DeclareOperation("[]",[IsNumericalSet,IsInt]);

# DeclareOperation("+",[IsNumericalSet,IsList]);
# DeclareOperation("-",[IsNumericalSet,IsList]);

DeclareOperation("+",[IsNumericalSet,IsInt]);
DeclareOperation("+",[IsInt,IsNumericalSet]);

DeclareOperation("-",[IsInt,IsNumericalSet]);

DeclareOperation("=",[IsNumericalSet,IsNumericalSet]);

DeclareOperation("Extend",[IsNumericalSet,IsListOrCollection]);
DeclareOperation("Extend",[IsNumericalSet,IsInt]);

DeclareOperation("Intersection2",[IsNumericalSet,IsNumericalSet]);
