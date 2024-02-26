#to visuaise sales-by category and data

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('Data.csv', encoding='latin-1')
df['Order_Date'] = pd.to_datetime(df['Order_Date'])

plt.figure(figsize=(12, 8))
sns.scatterplot(data=df, x='Order_Date', y='Sales', hue='Category', palette='Set2', s=100)
plt.title('Sales by Order Date and Category')
plt.xlabel('Order Date')
plt.ylabel('Sales')
plt.xticks(rotation=45)
plt.legend(title='Category')
plt.grid(True)
plt.tight_layout()
plt.show()
