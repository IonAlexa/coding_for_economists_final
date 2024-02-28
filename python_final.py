# Final Assignment Python

#Use Python “lists” and “dictionaries” appropriately. Demonstrate one of the two.

import pandas as pd


# Created a list with all districts where there are hotels in the dataset:
districts = pd.read_csv('data/raw/hotelsvienna.csv')

neighbourhood_set = set(districts['neighbourhood'])

neighbourhood_list = list(neighbourhood_set)

print(neighbourhood_list)


# Created a dictonary to see how many hotels are in each district (how often each district appears in the dataset), using for the for loop:)
neighbourhood_freq_dict = {}
for index, row in districts.iterrows():
    observation = row['neighbourhood']
    if observation in neighbourhood_freq_dict:
        neighbourhood_freq_dict[observation] += 1
    else:
       neighbourhood_freq_dict[observation] = 1

# Print the dictionary
print(neighbourhood_freq_dict)



