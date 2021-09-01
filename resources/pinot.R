library(tidyverse)
setwd("~/GDrive/teaching/DATA-504/resources")
wine <- read_rds("wine.rds") %>% 
  filter(variety %in% c("Pinot Noir","Burgundy","Pinot Nero")) %>% 
  mutate(province = fct_lump(province,5)) %>% 
  mutate(province = as.character(province)) %>% 
  filter(province != "Other") %>% 
  select(province, price, points, year, taster_name, description) %>% 
  drop_na() %>% 
  mutate(province = str_replace_all(province, " ", "_")) 

as.data.frame(wine) %>% 
  write_rds(path = "pinot.rds")