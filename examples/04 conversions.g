#! @Chapter Conversions
#! @Section Converting A NumericalSet to IntegerPartition

#! @BeginExample
S := NumericalSet( [0,3,4,5,7] );
#! {0,3,4,5,7,->}
#! @EndExample

#! @BeginExample
P := IntegerPartition( S );
#!     A 11 6=3+1+1+1
S  = NumericalSet( P );
#! true
#! @EndExample

#! @Section Converting An IntegerPartition to NumericalSet
#! @BeginExample
S := NumericalSet( P );
#! {0,3,4,5,7,->}
P  = IntegerPartition( S );
#! true
#! @EndExample
