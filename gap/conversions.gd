#! @Chapter Numerical Sets
#! @Section Construction of A Numerical Set
#! @Subsection Construction of The Numerical Set From An Integer Partition

#! @Arguments IntegerPartition
#! @Returns NumericalSet
#! @Description Calculates the numerical set correspondint to given integer partition.
DeclareAttribute( "NumericalSet", IsIntegerPartition );

#! @Chapter Integer Partitions
#! @Section Construction of An Integer Partition
#! @Subsection Construction of The Integer Partition From A Numerical Set

#! @Arguments NumericalSet
#! @Returns IntegerPartition
#! @Description Calculates the integer partition correspondint to given numerical set.
DeclareAttribute( "IntegerPartition", IsNumericalSet);

