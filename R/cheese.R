library(tidyverse)
library(janitor)
library(maps)




# Read data ---------------------------------------------------------------

raw_cheese <- read_csv("cheeses.csv") %>%
  rowid_to_column("row_id")

raw_cheese_details <- read_csv("cheese_details.csv") %>%
  rowid_to_column("row_id")

x <- compare_df_cols(raw_cheese, raw_cheese_details)


# cheese milk ------------------------------------------------------------

# there are multiple values in the milk column, so we need to split them and then unnest them

milk_multiple <- raw_cheese %>%
  select(row_id, milk) %>%
  filter(str_detect(milk, ",")) %>%
  separate_rows(milk, sep = ",") %>%
  mutate(milk = str_trim(milk)) %>%
  distinct()

milk_single <- raw_cheese %>%
  select(row_id, milk) %>%
  filter(!str_detect(milk, ","))

milk_cheese <- bind_rows(milk_single, milk_multiple) %>%
  distinct() %>%
  arrange(row_id)


clean_cheese_milk <- raw_cheese %>%
  select(-milk) %>%
  left_join(milk_cheese, by = "row_id") %>%
  select(-row_id) %>%
  clean_names()

rm(milk_multiple, milk_single, milk_cheese)

cheese_milk <- clean_cheese_milk %>%
  group_by(milk) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count))

rm(clean_cheese_milk)

# cheese texture ----------------------------------------------------------

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

cheese_texture <- clean_cheese_texture %>%
  group_by(texture) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count))


rm(texture_cheese, clean_cheese_texture)


# cheese map --------------------------------------------------------------

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


cheese_by_country <- clean_cheese_country %>%
  group_by(country) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count))

rm(country_cheese, clean_cheese_country)

# make a histogram of the cheese count by country

cheese_histogram <- ggplot(cheese_by_country, aes(x = count)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  labs(
    title = "Cheese Count by Country",
    x = "Cheese Count",
    y = "Number of Countries"
  )

# plot(cheese_histogram)


