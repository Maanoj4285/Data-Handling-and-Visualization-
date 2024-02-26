#top 10 product id

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

top_product_sales = df.groupby('Product_ID')['Sales'].sum().sort_values(ascending=False).head(10)

plt.figure(figsize=(12, 8))
top_product_sales.plot(kind='bar', color='skyblue')
plt.title('Total Sales for Top 10 Products')
plt.xlabel('Product ID')
plt.ylabel('Total Sales')
plt.xticks(rotation=45)
plt.grid(axis='y')
plt.tight_layout()
plt.show()
