#top 10 customer id
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

sales_by_customer = df.groupby('Customer_ID')['Sales'].sum().reset_index()

top_10_customers = sales_by_customer.sort_values(by='Sales', ascending=False).head(10)

plt.figure(figsize=(10, 6))
plt.bar(top_10_customers['Customer_ID'], top_10_customers['Sales'], color='skyblue')
plt.title('Top 10 Customers by Sales')
plt.xlabel('Customer ID')
plt.ylabel('Total Sales')
plt.xticks(rotation=45)
plt.show()
