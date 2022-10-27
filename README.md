A config.py file is REQUIRED - place in the root directory of this project.
It requires a database username as 'username', a database password as 'password', and a database name as 'database_name'


#                                                    Group Project Two
##                                                 Extract, Transform, Load
    
Team Members 

- Halley Ngoc Pham 
- Liam Baker
- Mark Stephen


##                                                    Project Overview 

#### 1. Proposal 

        For our project we wanted to find and aggregate data that will allow us to look at Covid 19 vaccinations
        and Covid 19 recoveries per country by date. The dataset will also allow us to look at key points during
        this time period to acertain the effectiveness of the vaccinations at aiding suppression and recovery from
        the virus.

#### 2. Data used to create Database.

        In our project we used three seperate Covid 19 data sets. 
        - Region_date_metadata.csv
        - Region_metadata.csv
        - vaccinations.csv
        
        These datasets will give us the ability to check relevant covid-19 data across country and date.
        
#### 3. Technologies Used:
        
        Jupyter Notebook
        Pandas
        Postgres SQL
        SQL Alchemy

#### 4. Findings.

        When building this database we found that our data had a lot of NaN values in multiple columns. To overcome this we 
        had to change all NaN values to zero values to upload to SQL. Unnecessary rows were filtered by requiring a key piece 
	of information (number of vaccinations) that must be greater than zero, with other rows either missing data or being 
	unnecessary.

        We also found that when building a database that flowed and made sense we had to tailor which tables held what data. 
        In doing this we found that we had to drop some columns from the orginal CSV files. Additionaly, some data included
	information about regions, which needed to be aggregated per-country for the purporses of this dataset. Not all countries
	included sub-regions, and this was required for effective linking to vaccination records in the future.	
        
        In doing this we were able to make a database that holds many points of interesting and relevant data that can be joined 
        in different ways to build in depth analysis on the roll out of Covid 19 vaccinations and the effect this had on the rate 
        of recovery.

        Please note we have built the database in this way to retain as much data as possible, we found that the CSV data in some
        instances had missmatching date ranges so chose not to join CSV data before uploading to SQL.



#### 5. References:
        + vaccinations.csv: https://www.kaggle.com/datasets/priteshraj10/covid-vaccination-all-countries-data, accessed date: 24 October 2022
        + Region_metadata.csv https://www.kaggle.com/datasets/rohanrao/covid19-forecasting-metadata, accessed date: 24 October 2022
        + Region_date_metadata.csv: https://www.kaggle.com/datasets/rohanrao/covid19-forecasting-metadata accessed date: 24 October 2022

#### 6. How to operate database.

        To operate this database please do the following.

        - Download git repository including all notebooks, schema and resource files.

        - Create a config.py file with you postgresql username, password and database name as noted in the "vaccinations.ipynd" 
          notebook.

        - Create a database in progresql using the same name you chose in the config.py, load the schema.sql into your database 
          using the query tool.

        - Once you have your database and config.py set up correctly you can now run the vaccinations.ipynd notebook, this will build
          your database.

        
        

        
        

        
