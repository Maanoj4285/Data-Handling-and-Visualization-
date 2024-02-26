#to visualise sales by category and subcategory using bar chart

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('Data.csv', encoding='latin-1')
category_subcategory_sales = df.groupby(['Category', 'Sub_Category'])['Sales'].sum().unstack(fill_value=0)

plt.figure(figsize=(15, 20))

category_subcategory_sales.plot(kind='bar', stacked=True, ax=plt.gca())
plt.title('Sales Distribution by Category and Subcategory')
plt.xlabel('Category')
plt.ylabel('Sales')
plt.xticks(rotation=45)
plt.legend(title='Subcategory')

plt.tight_layout()
plt.show()
