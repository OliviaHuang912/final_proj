## Project Overview
This project analyzes the "Sleep Health and Lifestyle" dataset, which includes data on various factors influencing sleep and overall well-being. The dataset consists of 400 observations across 13 variables, such as age, gender, occupation, BMI, blood pressure, heart rate, daily steps, and the presence or absence of sleep disorders. The objectives of this project are:
- To explore the key variables through summary statistics.
- To analyze how different lifestyle factors affect sleep quality.
- To visualize relationships between sleep health and lifestyle factors.

## How to generate the report: 
1. Clone the GitHub repository:
    ```bash
    git clone https://github.com/yourusername/your-repository.git
    cd your-repository
    make install
    ```
    
2. Ensure that all required R packages are installed:
    ```r
    install.packages(c("ggplot2", "knitr", "rmarkdown"))
    ```
    
3. Run the Makefile to generate the report:
    ```bash
    make
    ```
4. Clean up generated files:
    ```bash
    make clean
    ```
This will create the `toolkit_proj.html` document, which contains the analysis and visualizations.

## Contents of the Final Report
1. Code for creating the table
The code to create the summary table is located in the toolkit_proj.Rmd file under the Descriptive Statistics section. Specifically, this code calculates the mean, median, and standard deviation for key variables, such as age, sleep duration, and physical activity level. 

2. Code for creating the figures
*Figure 1: Sleep Duration by Occupation: 
The code generates a boxplot showing the sleep duaration by occupation

*Figure 2: Relationship Between Physical Activity and Sleep Duration: 
The scatterplot visualizes the relationship between physical activity and sleep duration.

