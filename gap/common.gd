#! @Chapter Common Methods
#! @Section For Numerical Sets And Integer Partitions

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description Length of a numerical set is the number of its small elements.
DeclareAttribute( "Length", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description Genus of a numerical set is the number of its gaps.
DeclareAttribute( "Genus", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The largest gap of a numerical set is called its Frobenius number.
DeclareAttribute( "FrobeniusNumber", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "Parts", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns List
DeclareAttribute( "NonzeroSmallElements", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
#! @Description The conductor of a numerical set is the smallest element of it such that every subsequent integer is an element of it.
DeclareAttribute( "Conductor", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
DeclareAttribute( "Multiplicity", IsIntegerPartitionOrNumericalSet );

#! @Arguments IsIntegerPartitionOrNumericalSet
#! @Returns NumericalSet
DeclareAttribute( "CClosure", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
DeclareAttribute( "Total", IsIntegerPartitionOrNumericalSet );

#! @Arguments NumericalSet
#! @Returns Integer
DeclareAttribute( "Weight", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
DeclareProperty( "IsPerfectSemigroup", IsIntegerPartitionOrNumericalSet );

DeclareProperty( "IsStrict", IsIntegerPartitionOrNumericalSet );
DeclareProperty( "IsOdd", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsPositive", IsIntegerPartitionOrNumericalSet );

#! @Label
#! @Arguments IntegerPartition
#!
DeclareProperty( "IsNegative", IsIntegerPartitionOrNumericalSet );

#! @Section Duality and Symmetry

#! @Arguments NumericalSet
#! @Returns NumericalSet
DeclareAttribute( "Dual", IsNumericalSet );

#! @Arguments IntegerPartition
DeclareAttribute( "Dual", IsIntegerPartition );
