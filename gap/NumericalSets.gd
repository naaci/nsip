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
DeclareAttribute( "NumericalSet", IsList );

#! @Subsection NumericalSetByGaps

#! @Arguments List
#! @Returns NumericalSet
DeclareAttribute( "NumericalSetByGaps", IsList );

DeclareOperation( "Iterator", [IsNumericalSet]);

DeclareOperation("PrintObj",[IsNumericalSet]);

DeclareOperation("in",[IsInt,IsNumericalSet]);

DeclareOperation("[]",[IsNumericalSet,IsInt]);

DeclareOperation("+",[IsNumericalSet,IsList]);
DeclareOperation("-",[IsNumericalSet,IsList]);

DeclareOperation("+",[IsNumericalSet,IsInt]);

DeclareOperation("-",[IsInt,IsNumericalSet]);

DeclareOperation("=",[IsNumericalSet,IsNumericalSet]);

DeclareOperation("Extend",[IsNumericalSet,IsList]);
DeclareOperation("Extend",[IsNumericalSet,IsInt]);
