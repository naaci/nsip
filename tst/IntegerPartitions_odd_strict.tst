gap> P := IntegerPartition([19,17,13,1]);;
gap> S := Bend(P);;
gap> IsOdd(P);
true
gap> IsStrict(P);
true
gap> IsSymmetric(S);
true
gap> UnBend(S) = P;
true
gap> EulerBijection(P) = P;
true
