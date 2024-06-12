## About this Repo 

This is a portfolio of my work applying fundamental data analytic and data science techniques.
It includes different code tasks, which are outlined in more detail below.

### 1. Organising and Filtering Datasets

[Organising and Filtering Datasets](https://github.com/ilanatr/Project_Portfolio/blob/main/Data_Filtering_Organising.ipynb)

Objective: Develop a Python script that filters and organizes a dataset based on specific criteria.

Requirements:
- Pandas library
- Use dictionary, list or set
- Implement functions that filter data

Method: 
The file Data_Filtering_Organising includes three key user-defined functions:
1. Reads the dataset and outputs the values associated with a specific key in the dataset
2. Outputs a frequency table for a specified column name
3. Creates a filtered data set just including name and age based on a specific age range

### 2. Rock Paper Scissors Game

[Rock, Paper, Scissors](https://github.com/ilanatr/Project_Portfolio/blob/main/rps.py)

Objective:
- To create a programme that plays the rock, paper, scissors game which seeks input from the user and a random choice from the computer to determine a winner.

Method:
- Import Random library
- Utilises exception handling to highlight input (value) errors.
- Define three functions: user's choice, computer's choice, determine a winner
- Create final function: play the game based on previous three functions

### 3. Data visualisation of car data

[Data Visualisation](https://github.com/ilanatr/Project_Portfolio/blob/main/data_viz_task.ipynb)

Objective:
- To create and interpret simple data visualisations for car manufacturer data

Requirements:
- Pandas library
- Matplotlib.pyplot libray
- NumPy library
- Seaborn library
- Include boxplots, histograms, lineplots and barplots.

Results:
- The manufacturer with the highest revs per mile is the Geo, which has an average revs per mile of 3755
- The distribution of the histogram indicates that fuel consumption is generally higher on the highway as the bar charts are skewed towards the right while city fuel consumption is skewed more towards the left and lower end of the x axis indicating more cars have lower MPG.
- There is a linear relationship between a car's turning circle and its wheelbase. As the wheelbase gets larger the turning circle also gets larger, although there are a few outliers. Where the wheelbase is 115mm, the turning circle angle is at 38, this is lower than for a car with a wheelbase of around 112, which has a higher turning circle of 43 degrees
- Vans have a smaller average horsepower than a sporty or midsized vehicle but a larger car does indeed have a larger average horsepower than both small and compact cars.

### 4. Analyse Customer Data with SQL

[SQL Customer Data Analysis](https://github.com/ilanatr/Project_Portfolio/blob/main/analyse_cust_data_sql.sql)

Objective:
- To analyse the SQL Lite Sakila database which includes data on DVD rental stores globally.
  
Output: The SQL file implements queries to create and read the database in order to calculate information such as total payments and average payment information.

### 5. Data Statistics and Data Visualisation of country CO2 emissions

Objective: carry out exploratory data analysis of CO2 emissions for countries 

Data Source: [Kaggle CO2 emissions: 1960-2019](https://www.kaggle.com/datasets/ulrikthygepedersen/co2-emissions-by-country)

Notebook: [Country CO2 Emissions EDA](https://github.com/ilanatr/Project_Portfolio/blob/main/Desc_stats_and_data_viz.ipynb)

Requirements:
- Use pandas, numpy, matplotlib and seaborn libraries
- Compute basic stats (mean, median, mode, sd, quartiles)
- Create visualisations (hists, boxplots, scatterplots)
- Apply basic inferential stats (e.g. confidence intervals)

This tool  computes descriptive statistics for a dataset on CO2 emissions by countries and visualises these statistics through various charts and graphs. 
The tool helps in understanding the distribution, central tendency, and variability of the data using timeseries analysis.

Insights:
- The average CO2 emissions for 2019 across all countries in this dataset is 190969.22 kilotons.
- The country with the highest CO2 emissions in 2019 was China. China had 10707219.73 kilotons of CO2 emissions.
- The standard deviation for the CO2 emissions in the 2019 country dataset is 892755.94. This indicates a large variation in data across countries.
- China's CO2 emissions have increased dramatically since the year 2000. In the year 2000, China's CO2 emissions were 3,346,530 kilotons, which rose to 10,707,220 in 2019.

### 6. Linear Regression analysis on Algerian Forest Fires

[Algerian Forest Fires](https://github.com/ilanatr/Project_Portfolio/blob/main/forest_fires_algeria.ipynb)

Objective:
- To examine the relationship between specific variables and forest fires in Algeria

Requirements:
- Use pandas, numpy, matplotlib, sklearn and seaborn libraries

Method:
- This analysis involved cleaning a dataset of forest fires in Algeria to handle missing values and inconsistencies.
- Exploratory Data Analysis (EDA) was conducted to examine the relationships between meteorological variables (temperature, wind, and relative humidity) and the area burned by fires.
- Visualisations, including scatter plots and correlation analyses, are used to illustrate these relationships.
- Predictive modeling with Linear Regression and Random Forest Regressor is applied to predict the burned area, revealing the complexity of fire prediction and the need for more sophisticated modeling.

Results: Reveals weak correlations between meteorological factors (temperature, wind, and relative humidity) and the area burned by forest fires. Despite applying Linear Regression models, the predictive accuracy was low, indicating that predicting forest fire areas is complex and may require more advanced models or additional data for better accuracy.

