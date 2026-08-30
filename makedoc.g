# AutoDoc: Generate documentation from GAP source code
#
# Copyright of AutoDoc belongs to its developers.
# Please refer to the COPYRIGHT file for details.
#
# SPDX-License-Identifier: GPL-2.0-or-later


LoadPackage("AutoDoc");
LoadPackage("nsip");
# GenerateDoc(DocPackage("nsip"),"tex");

AutoDoc( 
    "nsip", 
    rec( 
        autodoc := true,
        scaffold := true,
        # scaffold := rec(
        #     # includes := [
        #     #     # "Tutorials.xml", 
        #     #     # "Comments.xml",
        #     #     ],
        #     # bib := "bib.xml"
        # ),
        extract_examples := true,
        maketest := true,
        PackageName := "nsip",
        Subtitle := "Numerical Sets and Integer Partitions",
        PackageDoc := rec(
            BookName := ~.PackageName,
            ArchiveURLSubset := ["doc"],
            HTMLStart := "doc/chap0.html",
            PDFFile := "doc/manual.pdf",
            SixFile := "doc/manual.six",
            LongTitle := ~.Subtitle,
            ),
        )
    );
QUIT;
