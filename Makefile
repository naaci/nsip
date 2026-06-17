packages :=  latex-bin geometry fancyvrb psnfss hyperref etoolbox enumitem times dvips

install:
	tlmgr install $(packages)

update:
	tlmgr update  $(packages)

clean:
	latexmk -c

%.pdf: %.tex myformat.fmt
	luahblatex $<

.git/index : $(wildcard *)
	git add . && git commit -m a && git push
