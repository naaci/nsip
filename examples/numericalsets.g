#! @Chapter Numerical Sets
#! @Section Construction of A Numerical Set
#! @Subsection Examples

#! @BeginExample
S := NumericalSet([0,3,4,5,7]);
#! {0,3,4,5,7,->}
#! @EndExample


#! @BeginExample
S := NumericalSetByGaps([1,2,6]);
#! {0,3,4,5,7,->}
#! @EndExample

#! @Section Attributes of A Numerical Set

#! @BeginExample
SmallElements(S);
#! [ 0, 3, 4, 5, 7 ]
#! @EndExample

#! @BeginExample
Genus(S);
#! 3
#! @EndExample

#! @BeginExample
Length(S);
#! 4
#! @EndExample

#! @BeginExample
FrobeniusNumber(S);
#! 6
#! @EndExample

#! @BeginExample
Conductor(S);
#! 7
#! @EndExample

#! @BeginExample
Multiplicity(S);
#! 3
#! @EndExample

