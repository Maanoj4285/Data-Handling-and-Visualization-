#to visualize highest sales with customer details
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

df['Order_Date'] = pd.to_datetime(df['Order_Date'])

df['Year'] = df['Order_Date'].dt.year

highest_sales_each_year = df.loc[df.groupby('Year')['Sales'].idxmax()]

highest_sales_info = highest_sales_each_year[['Year', 'Product_ID', 'Product_Name', 'Customer_ID', 'Sales']]

print(highest_sales_info)
plt.figure(figsize=(10, 6))
for year, data in highest_sales_info.groupby('Year'):
    plt.bar(year, data['Sales'], label=f'{year} - Product: {data["Product_Name"].values[0]} ({data["Product_ID"].values[0]}), Customer ID: {data["Customer_ID"].values[0]}')

plt.title('Highest Sales with Product and Customer Information for Each Year')
plt.xlabel('Year')
plt.ylabel('Sales')
plt.legend()
plt.tight_layout()
plt.show()
