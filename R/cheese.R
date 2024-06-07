library(tidyverse)
library(janitor)
library(maps)


# Read data ---------------------------------------------------------------

raw_cheese <- read_csv("cheeses.csv") %>%
  rowid_to_column("row_id")

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

# Clean data ---------------------------------------------------------------

clean_cheese <- raw_cheese %>%
  select(-country) %>%
  left_join(country_cheese, by = "row_id") %>%
  select(-row_id) %>%
  clean_names()


cheese_by_country <- clean_cheese %>%
  group_by(country) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count))

world_map <- map_data("world") %>%
  mutate(region = if_else(!is.na(subregion) & region == "United Kingdom", subregion, region)) %>%
  mutate(region = case_when(
    region == "USA" ~ "United States",
    region == "UK" ~ "United Kingdom",
    TRUE ~ region
  ))

cheese_map <- world_map %>%
  left_join(cheese_by_country, by = c("region" = "country"))

no_match <- cheese_by_country %>%
  filter(!country %in% world_map$region)

cheese_map_plot <- ggplot(cheese_map, aes(x = long, y = lat, group = group)) +
  geom_polygon(aes(fill = count), color = "white") +
  coord_fixed(1.3) +
  theme_minimal() +
  scale_fill_viridis_c() +
  labs(
    title = "Cheese by Country",
    fill = "Cheese Count"
  )

plot(cheese_map_plot)


