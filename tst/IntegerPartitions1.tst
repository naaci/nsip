gap> P := IntegerPartition([7,3,1,1]);
        5 2 12= 7+ 3+ 1+ 1
gap> Gaps(P);
[ 1, 2, 3, 4, 6, 7, 10 ]
gap> GapsOfFirstType(P);
[ 1, 2, 10 ]
gap> GapsOfSecondType(P);
[ 3, 4, 6, 7 ]
gap> Genus(P);
7
gap> Length(P);
4
gap> FrobeniusNumber(P);
10
gap> IsSymmetric(P);
false
gap> IsPositiveSemiSymmetric(P);
false
gap> IsNegativeSemiSymmetric(P);
false
gap> IsAlmostSymmetric(P);
true
gap> Type(P);
5
gap> Dual(P);
        2 2 12= 4+ 2+ 2+ 1+ 1+ 1+ 1
gap> Dual2(P);
      - 2 4 23= 7+ 6+ 6+ 4
gap> IsSuperSemiSymmetric(P);
false
gap> Total(P);
12
gap> Trace(P);
2
gap> IsNSG(P);
false
gap> IsArf(P);
false
gap> IsOdd(P);
true
gap> IsStrict(P);
false
gap> EulerBijection(EulerBijection(P))=P;
true
