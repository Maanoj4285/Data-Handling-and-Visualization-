#to visualise region and the shipmode
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

region_ship_mode_counts = df.groupby(['Region', 'Ship_Mode']).size().unstack(fill_value=0)

plt.figure(figsize=(10, 6))
region_ship_mode_counts.plot(kind='bar', stacked=False)
plt.title('Orders by Region and Ship Mode')
plt.xlabel('Region')
plt.ylabel('Number of Orders')
plt.xticks(rotation=45)
plt.legend(title='Ship Mode')
plt.show()
