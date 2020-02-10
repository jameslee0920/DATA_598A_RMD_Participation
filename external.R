# ---- set-up-the-data
library(tidyverse)
library(dplyr)
library(plyr)
library(data.table)
data = starwars %>% filter(species == "Human")
df = data.table(data)


# ---- print-the-kable-table
df %>% 
  select(name,
         height,
         mass,
         homeworld) %>%
  knitr::kable(caption = "A knitr kable table of starwars data")

# ---- print-the-ggplot-graph
df %>% 
  ggplot(aes(x = height, 
             y = mass)) +
  geom_point()

