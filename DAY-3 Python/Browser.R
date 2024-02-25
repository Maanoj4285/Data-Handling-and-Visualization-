import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_excel("Browser.xlsx")

chrome_data = df[df['Browser'] == 'Chrome']

plt.plot(chrome_data['Year'], chrome_data['Users'], marker='o', linestyle='-')

plt.title('Chrome Users Over the Years')
plt.xlabel('Year')
plt.ylabel('Users (Millions)')

plt.grid(True)
plt.show()
