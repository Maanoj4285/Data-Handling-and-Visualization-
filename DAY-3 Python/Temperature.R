import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_excel("Temperature.xlsx")

df['Date'] = pd.to_datetime(df['Date'], format='%d/%m/%Y')

df.set_index('Date', inplace=True)

plt.figure(figsize=(12, 6))

plt.plot(df.index, df['Station_A_Temperature'], label='Station_A_Temperature', color='red')
plt.plot(df.index, df['Station_A_Precipitation'], label='Station_A_Precipitation', color='orange')
plt.plot(df.index, df['Station_B_Temperature'], label='Station_B_Temperature', color='blue')
plt.plot(df.index, df['Station_B_Precipitation'], label='Station_B_Precipitation', color='green')

plt.title('Temperature and Precipitation Over Time')
plt.xlabel('Date')
plt.ylabel('Value')
plt.legend()
plt.grid(True)
plt.show()
