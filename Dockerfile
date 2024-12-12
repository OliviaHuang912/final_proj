# Use an R base image with required packages
FROM rocker/r-ver:4.3.1

# Set environment variables to prevent R from trying to create temporary files
ENV R_HOME=/usr/local/lib/R
ENV R_ENVIRON_USER=/usr/local/lib/R/etc/Renviron.site
ENV CRAN="https://cloud.r-project.org"

# Install required system libraries
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    pandoc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# install R packages
RUN R -e "install.packages(c('ggplot2', 'knitr', 'rmarkdown'))"

# Set the working directory in the container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Set the default command to render the R Markdown file
CMD ["Rscript", "-e", "rmarkdown::render('toolkit_proj.Rmd', output_dir = '/output')"]
