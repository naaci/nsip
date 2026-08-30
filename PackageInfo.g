# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#

SetPackageInfo( rec( 

PackageName := "nsip",
Subtitle := "Numerical Sets and Integer Partitions",
Version := "0.2",
Date := "29/08/2026", # dd/mm/yyyy format
License := "GPL-2.0-or-later",

Persons := [
  rec( 
    FirstNames := "Naci", 
    LastName := "Er", 
    #WWWHome := TODO, 
    Email := "naci.er@hotmail.com", 
    IsAuthor := true, 
    IsMaintainer := true, 
    #PostalAddress := TODO, 
    Place := "Alanya, Turkey", 
    Institution := "Alanya University", 
 ), 
  rec( 
    FirstNames := "Nesrin", 
    LastName := "Tutaş", 
    #WWWHome := TODO, 
    Email := "ntutas@gmail.com", 
    IsAuthor := false, 
    IsMaintainer := false, 
    #PostalAddress := TODO, 
    Place := "Antalya, Turkey", 
    Institution := "Akdeniz University", 
 ), 
  rec( 
    FirstNames := "Nihal", 
    LastName := "Gümüşbaş", 
    #WWWHome := TODO, 
    Email := "nihalgumusbas@gmail.com", 
    IsAuthor := false, 
    IsMaintainer := false, 
    #PostalAddress := TODO, 
    Place := "Antalya, Turkey", 
    Institution := "Akdeniz University", 
 ), 
], 

SourceRepository := rec( 
    Type := "git", 
    URL := Concatenation( "https://github.com/naaci/", ~.PackageName ),
 ), 

IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := ~.SourceRepository.URL,
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ), 
README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL, 
                                 "/releases/download/v", ~.Version, 
                                 "/", ~.PackageName, "-", ~.Version ),

AbstractHTML   :=  "", 

ArchiveFormats := ".tar.gz", 

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev", 

PackageDoc := rec( 
  BookName  := ~.PackageName, 
  ArchiveURLSubset := ["doc"], 
  HTMLStart := "doc/chap0.html", 
  PDFFile   := "doc/manual.pdf", 
  SixFile   := "doc/manual.six", 
  LongTitle := ~.Subtitle,
 ),

Dependencies := rec( 
  # GAP := ">= 4.12", 
  NeededOtherPackages := [ ], 
  SuggestedOtherPackages := [ 
    # ["NumericalSgps", "1.3.1"]
    ], 
  ExternalConditions := [ ], 
 ), 

AvailabilityTest := ReturnTrue, 

TestFile := "maketest.g", 

#Keywords := [ "TODO" ], 
 ) );
