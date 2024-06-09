library(tidyverse)
library(janitor)
library(maps)


# Read data ---------------------------------------------------------------

raw_cheese <- read_csv("cheeses.csv") %>%
  rowid_to_column("row_id")


# Clean data --------------------------------------------------------------

# there are multiple values in the country column, so we need to split them and then unnest them

country_multiple <- raw_cheese %>%
  select(row_id, country) %>%
  filter(str_detect(country, ",")) %>%
  separate_rows(country, sep = ",") %>%
  mutate(country = str_trim(country)) %>%
  distinct()

country_single <- raw_cheese %>%
  select(row_id, country) %>%
  filter(!str_detect(country, ",")) %>%
  mutate(country = if_else(country == "Mexico and Carribean", "Mexico", country))

country_cheese <- bind_rows(country_single, country_multiple) %>%
  distinct() %>%
  mutate(country = case_when(
    country == "England" ~ "United Kingdom",
    country == "Scotland" ~ "United Kingdom",
    country == "Wales" ~ "United Kingdom",
    country == "Great Britain" ~ "United Kingdom",
    country == "Holland" ~ "Netherlands",
    country == "Mexico and Caribbean" ~ "Mexico",
    TRUE ~ country
  )) %>%
  arrange(row_id)
rm(country_multiple, country_single)

clean_cheese_country <- raw_cheese %>%
  select(-country) %>%
  left_join(country_cheese, by = "row_id") %>%
  select(-row_id) %>%
  clean_names()

# there are multiple values in the texture column, so we need to split them and then unnest them

texture_multiple <- raw_cheese %>%
  select(row_id, texture) %>%
  filter(str_detect(texture, ",")) %>%
  separate_rows(texture, sep = ",") %>%
  mutate(texture = str_trim(texture)) %>%
  distinct()

texture_single <- raw_cheese %>%
  select(row_id, texture) %>%
  filter(!str_detect(texture, ","))

texture_cheese <- bind_rows(texture_single, texture_multiple) %>%
  distinct() %>%
  arrange(row_id)

rm(texture_multiple, texture_single)

clean_cheese_texture <- raw_cheese %>%
  select(-texture) %>%
  left_join(texture_cheese, by = "row_id") %>%
  select(-row_id) %>%
  clean_names()



# cheese table ------------------------------------------------------------

# cheese_milk <- clean_cheese %>%
#   group_by(milk) %>%
#   summarise(
#     count = n()
#   ) %>%
#   arrange(desc(count))



# cheese texture ----------------------------------------------------------

cheese_texture <- clean_cheese_texture %>%
  group_by(texture) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count))





# cheese map --------------------------------------------------------------


cheese_by_country <- clean_cheese_country %>%
  group_by(country) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count))





