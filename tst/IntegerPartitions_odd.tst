gap> P := IntegerPartition([19,19,17,17,17,13,1,1,1,1]);;
gap> IsOdd(P);
true
gap> S := EulerBijection(P);;
gap> IsStrict(S);
true
gap> EulerBijection(S) = P;
true
