#! @Chapter Introduction
#! This package provides a GAP implementation of numerical sets and integer partitions.
#!
#! The GAP package `numericalSgps` uses generators to represent numerical semigroups.
#! But for numerical sets there is no direct generator representation. 
#! Therefore, we represent numerical sets by their gaps, which are the elements of the complement of the set in the non-negative integers.

#! @Section Installing and Updating the Package
#! You can install the package
#! @LatexOnly \footnote{For installing `gap` on your system, refer to the official GAP website: \url{https://www.gap-system.org/install}}
#! by cloning the repository from GitHub:
#! @LatexOnly \footnote{For installing the `git` version control system, refer to the official Git website: \url{https://git-scm.com/install}}
#! 
#! On linux or macOS, run the following command in your terminal:
#! 
#! `git clone https://github.com/naaci/nsip.git ~/.gap/pkg/nsip`
#! 
#! On windows, run the following command in your command prompt:
#! 
#! `git clone https://github.com/naaci/nsip.git %USERPROFILE%/.gap/pkg/nsip`
#! 

#! @Section Loading the Package
#! After installing the package, you can load it in GAP by running the following command:

#! @BeginExample
LoadPackage("nsip");
#! true
#! @EndExample
