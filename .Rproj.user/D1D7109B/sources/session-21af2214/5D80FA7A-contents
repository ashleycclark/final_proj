library(labelled)
library(gtsummary)
library(dplyr)
library(gt)
library(gtExtras)
library(ggplot2)
library(tidyr)

#Table One
overdose_table <- south_data %>% 
  filter(Intent == "Drug_OD") %>% 
  group_by(ST_NAME) %>% 
  summarize(
    mean_overdose = mean(Rate, na.rm = TRUE),
    median_overdose = median(Rate, na.rm = TRUE),
    n_tracts = n()
  ) %>% 
  arrange(desc(mean_overdose))

overdose_table %>%
  gt() %>%
  cols_label(
    ST_NAME = "State",
    mean_overdose = "Overdose Mortality Rate",
    median_overdose = "Median Overdose Rate",
    n_tracts = "Number of Census Tracts"
  ) %>%
  tab_header(
    title = "Overdose Mortality Rates by State (Southeastern States), 2025"
  ) %>% 
  gtExtras::gt_theme_nytimes()
