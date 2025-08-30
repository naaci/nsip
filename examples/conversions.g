#! @Chapter Conversions
#! @Section Converting An IntegerPartition to NumericalSet
#! @Subsection Example

#! @BeginExample
S := NumericalSet( P );
#! {0,3,4,5,7,->}
P  = IntegerPartition( S );
#! true
#! @EndExample

#! @Section Converting A NumericalSet to IntegerPartition
#! @Subsection Example

#! @BeginExample
P := IntegerPartition( S );
#!     A  1 1 6= 3+ 1+ 1+ 1
S  = NumericalSet( P );
#! true
#! @EndExample
