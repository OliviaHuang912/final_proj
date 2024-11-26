report: toolkit_proj.html

toolkit_proj.html: toolkit_proj.Rmd
	Rscript -e "rmarkdown::render('toolkit_proj.Rmd')"

clean:
	rm -f toolkit_proj.html
	
install:
	R -e "renv::restore()"