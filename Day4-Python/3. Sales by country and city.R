#to visualise sales by country and city
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('Data.csv', encoding='latin-1')

top_cities = df.groupby('City')['Sales'].sum().sort_values(ascending=False).head(10).index
df_filtered = df[df['City'].isin(top_cities)]

plt.figure(figsize=(9, 6))
sns.scatterplot(data=df_filtered, x='Category', y='Sales', hue='City', palette='Set2', s=100)
plt.title('Sales by Category and City')
plt.xlabel('Category')
plt.ylabel('Sales')
plt.xticks(rotation=45)
plt.legend(title='City')
plt.grid(True)
plt.tight_layout()
plt.show()
