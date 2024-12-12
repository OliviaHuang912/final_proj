report: toolkit_proj.html

toolkit_proj.html: toolkit_proj.Rmd
	Rscript -e "rmarkdown::render('toolkit_proj.Rmd')"

clean:
	rm -f toolkit_proj.html
	
install:
	R -e "renv::restore()"
	
docker_build:
	docker build -t chua295/toolkit_proj .
	
docker_run:
	docker run --rm -v $(PWD)/report:/report chua295/toolkit_proj
