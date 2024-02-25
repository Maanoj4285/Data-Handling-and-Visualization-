import matplotlib.pyplot as plt
import pandas as pd

df = pd.read_excel("Jobseekers.xlsx")

# Assuming you have columns 'Year', 'Job_seekers_rate', 'selection_rate' in your DataFrame
years = df['Year']
job_seekers_rate = df['Job_Seekers_Rate']
selection_rate = df['Selection_Rate']
job_sectors = df['Job_Sector']

# Plotting
plt.figure(figsize=(10, 6))

# Plot job seekers rate
plt.plot(years, job_seekers_rate, marker='o', label='Job Seekers Rate')

# Plot selection rate
plt.plot(years, selection_rate, marker='o', label='Selection Rate')

# Add labels and title
plt.xlabel('Year')
plt.ylabel('Rate (%)')
plt.title('Job Seekers Rate and Selection Rate by Year and Job Sector')
plt.xticks(years)
plt.legend()

# Add job sectors as x-axis ticks
plt.gca().set_xticklabels(job_sectors, rotation=45, ha='right')

# Show plot
plt.grid(True)
plt.tight_layout()
plt.show()
