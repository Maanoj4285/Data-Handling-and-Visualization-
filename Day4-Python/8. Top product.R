#top product for each year
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

df['Order_Date'] = pd.to_datetime(df['Order_Date'])

df['Year'] = df['Order_Date'].dt.year

yearly_product_sales = df.groupby(['Year', 'Product_ID'])['Sales'].sum()

top_product_by_year = yearly_product_sales.groupby('Year').idxmax().apply(lambda x: x[1])

num_years = len(top_product_by_year)
fig, axes = plt.subplots(nrows=1, ncols=num_years, figsize=(16, 6), sharey=True)

for i, (year, product_id) in enumerate(top_product_by_year.items()):
    sales = yearly_product_sales.loc[year]
    axes[i].bar(product_id, sales[product_id], color='skyblue')
    axes[i].set_title(f'Top Product for {year}')
    axes[i].set_xlabel('Product ID')
    axes[i].set_ylabel('Total Sales')
    axes[i].grid(axis='y')

plt.tight_layout()
plt.show()
