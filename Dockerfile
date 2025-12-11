FROM rocker/tidyverse

RUN apt-get update && apt-get install -y pandoc

RUN mkdir /project
WORKDIR /project

RUN mkdir Code
RUN mkdir Output_1

COPY Code /project/Code
COPY Output_1 /project/Output_1

COPY MAKEFILE .
COPY Final_Project.rmd .
COPY styles.css . 

COPY .Rprofile .
COPY renv.lock .
RUN mkdir renv
COPY renv/activate.R renv
COPY renv/settings.json renv

RUN Rscript -e "renv::restore(prompt = FALSE)"

RUN mkdir final_report 

CMD ["sh", "-c", "make && mv Final_Project.html final_report/"]
