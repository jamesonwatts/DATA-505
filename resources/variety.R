library(tidyverse)
setwd("~/GDrive/teaching/GSMDS-5004/resources")


wine <- read_rds("wine.rds") %>% 
  filter(province=="Oregon") %>% 
  mutate(variety = fct_lump(variety,5)) %>% 
  filter(variety != "Other") %>% 
  select(variety, price, points, description) %>% 
  drop_na() %>% 
  mutate(variety = str_replace_all(variety, " ", "_"))

write_rds(wine, path="variety-project.rds")

