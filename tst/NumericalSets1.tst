gap> S:=NumericalSet([3,8]);
{0,3,8,->}
gap> SmallElements(S);
[ 0, 3, 8 ]
gap> Gaps(S);
[ 1, 2, 4, 5, 6, 7 ]
gap> GapsOfFirstType(S);
[ 4, 7 ]
gap> GapsOfSecondType(S);
[ 1, 2, 5, 6 ]
gap> Genus(S);
6
gap> Length(S);
2
gap> FrobeniusNumber(S);
7
gap> IsSymmetric(S);
false
gap> IsPositiveSemiSymmetric(S);
false
gap> IsNegativeSemiSymmetric(S);
true
gap> IsAlmostSymmetric(S);
false
gap> Type(S);
3
gap> ConjugateOf(S);
{0,1,2,3,5,6,8,->}
gap> Dual(S);
{0,5,8,->}
gap> IsSemiSymmetric(S);
false
gap> PseudoFrobeniusNumbers(S);
[ 5, 6, 7 ]
gap> Atom(S);
{0,8,->}
gap> SmallElements(S);
[ 0, 3, 8 ]
gap> Conductor(S);
8
gap> Multiplicity(S);
3
gap> CClosure(S);
{0,3,6,8,->}
