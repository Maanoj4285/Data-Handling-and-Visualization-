#top customer each year
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')

df['Order_Date'] = pd.to_datetime(df['Order_Date'])

df['Year'] = df['Order_Date'].dt.year

sales_by_year_customer = df.groupby(['Year', 'Customer_ID'])['Sales'].sum().reset_index()

top_customer_by_year = sales_by_year_customer.loc[sales_by_year_customer.groupby('Year')['Sales'].idxmax()]

plt.figure(figsize=(10, 6))
for year, data in top_customer_by_year.groupby('Year'):
    plt.bar(year, data['Sales'], label=str(year) + ' - Customer ID: ' + str(data['Customer_ID'].values[0]))

plt.title('Top Customer Sales for Each Year')
plt.xlabel('Year')
plt.ylabel('Sales')
plt.legend()
plt.xticks(top_customer_by_year['Year'])
plt.tight_layout()
plt.show()
