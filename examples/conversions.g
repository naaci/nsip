#! @Chapter Conversions 
#! @Section Numerical Sets and Integer Partitions
#! @BeginExample
S := NumericalSet( [0,3,4,5,7] );
#! {0,3,4,5,7,->}
P := IntegerPartition( S );
#!     A - 1 1 6= 3+ 1+ 1+ 1
S  = NumericalSet( P );
#! true
Genus( S ) = Genus( P );
#! true
Length( S ) = Length( P );
#! true
FrobeniusNumber( S ) = FrobeniusNumber( P );
#! true
#! @EndExample

#! @BeginExample
P := IntegerPartition( [7,2,1,1] );
#! SG  A + 4 2 11= 7+ 2+ 1+ 1
P = IntegerPartition( NumericalSet( P ));
#! true
#! @EndExample

