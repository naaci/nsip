packages :=  latex-bin geometry fancyvrb psnfss hyperref etoolbox enumitem times dvips mfware

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

test:
	gap maketest.g
