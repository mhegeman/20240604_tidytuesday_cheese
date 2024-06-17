import pandas as pd
import matplotlib.pyplot as plt

# Read data
raw_cheese = pd.read_csv("cheeses.csv")
raw_cheese_details = pd.read_csv("cheese_details.csv")

# Cheese Milk Analysis
milk_multiple = raw_cheese[raw_cheese['milk'].str.contains(',')]['milk'].str.split(',', expand=True).stack().rename_axis(['row_id', 'idx']).reset_index(level=1, drop=True).rename('milk').reset_index()
milk_single = raw_cheese[~raw_cheese['milk'].str.contains(',')][['row_id', 'milk']]
milk_cheese = pd.concat([milk_single, milk_multiple], ignore_index=True)
cheese_milk = milk_cheese.groupby('milk').size().reset_index(name='count').sort_values('count', ascending=False)

# Cheese Texture Analysis
texture_multiple = raw_cheese[raw_cheese['texture'].str.contains(',')]['texture'].str.split(',', expand=True).stack().rename_axis(['row_id', 'idx']).reset_index(level=1, drop=True).rename('texture').reset_index()
texture_single = raw_cheese[~raw_cheese['texture'].str.contains(',')][['row_id', 'texture']]
texture_cheese = pd.concat([texture_single, texture_multiple], ignore_index=True)
cheese_texture = texture_cheese.groupby('texture').size().reset_index(name='count').sort_values('count', ascending=False)

# Cheese Country Analysis
country_multiple = raw_cheese[raw_cheese['country'].str.contains(',')]['country'].str.split(',', expand=True).stack().rename_axis(['row_id', 'idx']).reset_index(level=1, drop=True).rename('country').reset_index()
country_single = raw_cheese[~raw_cheese['country'].str.contains(',')][['row_id', 'country']]
country_single.loc[country_single['country'] == 'Mexico and Carribean', 'country'] = 'Mexico'
country_cheese = pd.concat([country_single, country_multiple], ignore_index=True)
country_cheese['country'] = country_cheese['country'].replace({'England': 'United Kingdom', 'Scotland': 'United Kingdom', 'Wales': 'United Kingdom', 'Great Britain': 'United Kingdom', 'Holland': 'Netherlands', 'Mexico and Caribbean': 'Mexico'})
cheese_by_country = country_cheese.groupby('country').size().reset_index(name='count').sort_values('count', ascending=False)

# Histogram
plt.figure(figsize=(10, 6))
plt.hist(cheese_by_country['count'], bins=30, edgecolor='black', color='skyblue')
plt.title('Cheese Count by Country')
plt.xlabel('Cheese Count')
plt.ylabel('Number of Countries')
plt.show()
