gap> P := IntegerPartition([7,2,1,1]);
SG  A - 4 2 11= 7+ 2+ 1+ 1
gap> Gaps(P);
[ 1, 2, 3, 4, 5, 7, 10 ]
gap> GapsOfFirstType(P);
[ 1, 2, 4, 10 ]
gap> GapsOfSecondType(P);
[ 3, 5, 7 ]
gap> Genus(P);
7
gap> Length(P);
4
gap> FrobeniusNumber(P);
10
gap> IsSymmetric(P);
false
gap> IsPseudoSymmetric(P);
false
gap> IsPositiveSemiSymmetric(P);
false
gap> IsNegativeSemiSymmetric(P);
true
gap> IsAlmostSymmetric(P);
true
gap> Type(P);
4
gap> ConjugateOf(P);
      + 1 2 11= 4+ 2+ 1+ 1+ 1+ 1+ 1
gap> Dual(P);
        2 4 24= 7+ 6+ 6+ 5
gap> IsSuperSemiSymmetric(P);
false
gap> Total(P);
11
gap> Trace(P);
2
gap> IsNSG(P);
true
gap> IsArf(P);
false
gap> quit;
