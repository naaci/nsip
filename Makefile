packages :=  latex-bin geometry fancyvrb psnfss hyperref etoolbox enumitem times dvips mfware ec metafont

install:
	tlmgr install $(packages)

update:
	tlmgr update  $(packages)

test: $(wildcard tst/*.tst)
	gap maketest.g

doc/manual.pdf: $(wildcard **/*.gd) $(wildcard 'examples/*.g')
	gap makedoc.g

.git/index : $(wildcard **/*)
	git add . && git commit -m a && git push
