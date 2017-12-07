rtest:
	rm -rvf *.gz
	R CMD build --no-build-vignettes .
	R CMD INSTALL rEDM_0.6.8.tar.gz
	./test.r

theirs:
	grep -lr '<<<<<<<' . | xargs git checkout --theirs
