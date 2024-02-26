#average sales for each year

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

df['Order_Date'] = pd.to_datetime(df['Order_Date'])

df['Year'] = df['Order_Date'].dt.year

average_sales_by_year = df.groupby('Year')['Sales'].mean()

plt.figure(figsize=(10, 6))
average_sales_by_year.plot(kind='bar', color='skyblue')
plt.title('Average Sales for Each Year')
plt.xlabel('Year')
plt.ylabel('Average Sales')
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()
