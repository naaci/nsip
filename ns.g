gap> T := NumericalSetByGaps( [ 1,  6,7 ] );
{0,2,3,4,5,8,->}
gap> T := NumericalSetByGaps( [ 1, 6, 7 ] );
{0,2,3,4,5,8,->}
gap> S := NumericalSet( [ 0, 3, 4, 5, 7 ] );
{0,3,4,5,7,->}
gap> S + T;
Error, no method found! For debugging hints type ?Recovery from NoMethodFound
Error, no 1st choice method found for `+' on 2 arguments at /usr/share/gap/lib/methsel2.g:250 called from
<function "HANDLE_METHOD_NOT_FOUND">( <arguments> )
 called from read-eval loop at *stdin*:6
type 'quit;' to quit to outer loop
brk> quit;
gap> S;
{0,3,4,5,7,->}
gap> S ++ 2;
{0,2,5,6,7,9,->}
gap> 2 + S;
{0,2,5,6,7,9,->}
gap> 
gap> 2 - S;
[ 2 ]
gap> Extend( S, 2);
{0,2,3,4,5,7,->}
gap> Extend( S, [ 2, 6 ]);
{0,2,->}
gap> Intersection2( S, T );
{0,3,4,5,8,->}
gap> Union2( S, T );
{0,2,3,4,5,7,->}
gap> NonzeroSmallElements( S );
[ 3, 4, 5, 7 ]
gap> Parts( S );
[ 3, 1, 1, 1 ]
gap> Gaps( S );
[ 1, 2, 6 ]
gap> Conductor( S );
7
gap> LoadPackage( "AutoDoc" );
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Loading AutoDoc 2025.10.16 (Generate documentation from GAP source code)
by Sebastian Gutsche (https://algebra.mathematik.uni-siegen.de/gutsche/) and
   Max Horn (https://www.quendi.de/math).
with contributions by:
   Mohamed Barakat,
   Markus Pfeiffer,
   Øystein Skartsæterhagen,
   Chris Wensley,
   Glen Whitney, and
   Fabian Zickgraf.
Homepage: https://gap-packages.github.io/AutoDoc
Report issues at https://github.com/gap-packages/AutoDoc/issues
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
true
gap> AutoDoc( rec( scaffold := true ) );
#I Composing XML document . . .
#I Parsing XML document . . .
#I Checking XML structure . . .
#I Text version (also produces labels for hyperlinks):
#I First run, collecting cross references, index, toc, bib and so on . . .
#I Table of contents complete.
#I Producing the index . . .
#I Second run through document . . .
#I Producing simplified search strings and labels for hyperlinks . . .
#I Constructing LaTeX version and calling pdflatex:
#I Writing LaTeX file, 4 x pdflatex with bibtex and makeindex, 
#I Writing manual.six file ... 
#I Finally the HTML version . . .
#I First run, collecting cross references, index, toc, bib and so on . . .
#I Table of contents complete.
#I Producing the index . . .
#I Second run through document . . .
#I - also HTML version for MathJax . . .
#I First run, collecting cross references, index, toc, bib and so on . . .
#I Table of contents complete.
#I Producing the index . . .
#I Second run through document . . .
#I  File: /home/naci/projects/nsip/doc/manual.lab written.
true
gap> quit;
