#! @Chapter Conversions 
#! @Section Numerical Sets and Integer Partitions
#! @BeginExample
S := NumericalSet( [0,3,4,5,7] );
#! {0,3,4,5,7,->}
S  = NumericalSet( IntegerPartition( S ) );
#! true
#! @EndExample

#! @BeginExample
P := IntegerPartition( [7,2,1,1] );
#! SG  A + 11= 7+ 2+ 1+ 1
P = IntegerPartition( NumericalSet( P ));
#! true
#! @EndExample

