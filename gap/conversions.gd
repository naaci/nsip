#! @Chapter Conversions 
#! @Section Numerical Sets and Integer Partitions

#! @Arguments IntegerPartition
#! @Returns NumericalSet
#! @Description Calculates the numerical set correspondint to given integer partition.
DeclareAttribute( "NumericalSet", IsIntegerPartition );
DeclareAttribute( "NumericalSet2", IsIntegerPartition );

#! @Arguments NumericalSet
#! @Returns IntegerPartition
#! @Description Calculates the integer partition correspondint to given numerical set.
DeclareAttribute( "IntegerPartition", IsNumericalSet);
DeclareAttribute( "IntegerPartition2", IsNumericalSet);

