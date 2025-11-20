# Code Description

`code/final_proj_fig.R`
- Produces final project figure 1 
- saves final_proj_fig into output1 folder

`code/final_proj_table.R`
- Produces final project table 1 
- saves final_proj_table into output1 folder

`code/render_report.R`
- render `code/Final Project Part 2.Rmd`
- saves compiled report in report folder

`code/Final Project Part 2.Rmd`
- read data, tables, and figures from respective locations
- display results for production report

# How to 
To create the final report, run the command `make` at the command line. This project uses renv to reinitalize the packages
used in the creation of the report. To restore all necessary packages:
1. run `make install` at the command line OR;
2. run `renv::restore()` in R

# About this project 
This project analyzes gun violence patterns in the Southeastern U.S. states and presents the results in a final report.
The final report includes a table displaying overdose mortality rates for the seven Southeastern U.S. states. The final 
report also includes a pie chart displaying the distribution of firearm related deaths in the Southeastern United States in 2025.# final_proj
