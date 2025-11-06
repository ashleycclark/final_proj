library(labelled)
library(gtsummary)
library(dplyr)
library(gt)
library(gtExtras)
library(ggplot2)
library(tidyr)

#Figure One
firearm_data <- injury %>% 
  filter(ST_NAME %in% southern_states, Intent == "FA_Deaths") %>%
  group_by(ST_NAME) %>% 
  summarise(FA_Deaths = sum(as.numeric(Rate),na.rm = TRUE))



firearm_state_totals <- firearm_data %>%
  mutate(percentage = FA_Deaths / sum(FA_Deaths) * 100,
         label = paste0(round(percentage, 1), "%"))


ggplot(firearm_state_totals, aes(x = "", y = FA_Deaths, fill = ST_NAME)) +
  geom_col(width = 1, color = "white") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "PuRd") +
  geom_text(aes(label = label),
            position = position_stack(vjust = 0.6),
            color = "white", size = 4, fontface = "bold", family = "Arial") +
  labs(
    title = "Firearm Related Deaths in the Southeastern United States, 2025",
    fill = "State",
    caption = "out of all firearm-related deaths recorded across the seven southeastern states"
  ) +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold", family = "Georgia"),
    legend.title = element_text(size = 12, face = "bold"),
    legend.text = element_text(size = 10), text = element_text(family = "Arial")
  )
