check: document
	Rscript -e "devtools::check()"

document: bundle
	Rscript -e "devtools::document()"

install: check
	Rscript -e "devtools::install()"

bundle: 
	Rscript -e "packer::bundle()"

install:
	Rscript -e "devtools::install()"
