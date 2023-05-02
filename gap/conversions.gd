#! @Chapter Conversions

#! @Section Converting A NumericalSet to IntegerPartition

#! @Label
#! @Arguments NumericalSet
#! @Returns IntegerPartition
#! @Description Calculates the integer partition corresponding to given numerical set.
DeclareAttribute( "IntegerPartition", IsNumericalSet);

#! @Section Converting An IntegerPartition to NumericalSet

#! @Label
#! @Arguments IntegerPartition
#! @Returns NumericalSet
#! @Description Calculates the numerical set corresponding to given integer partition.
DeclareAttribute( "NumericalSet", IsIntegerPartition );

