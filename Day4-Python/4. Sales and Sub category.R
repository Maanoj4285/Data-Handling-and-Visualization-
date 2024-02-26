#to visualise sales by subcategory
import pandas as pd
import pandas as pd

df = pd.read_csv('Data.csv', encoding='latin-1')

subcategory_sales = df.groupby('Sub_Category')['Sales'].sum()

plt.figure(figsize=(10, 6))
plt.pie(subcategory_sales, startangle=140)
plt.title('Sales Distribution by Subcategory')
plt.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.legend(loc='upper left', labels=['%s, %1.1f%%' % (label, subcategory_sales[i] / subcategory_sales.sum() * 100) for i, label in enumerate(subcategory_sales.index)])

plt.show()
