# projectETL

----
## Do national GPD and happiness go together?

This repo uses information on the GPD, industry, health life expectancy, and happiness of the world's nations, to see how they may interact with one another.  

----
## Dependencies

* psycopg2
* pandas
* sqlalchemy 
* BeautifulSoup
* matplotlib
* requests
* os
* numpy
* pandas
* json
* ast
* pprint

----
## Data

This notebook pulls together 3 CSV datasets 
Data Sources:

* [World GDP Statistics For 2017](https://www.kaggle.com/theworldbank/world-bank-gdp-ranking#gdp-csv-.csv)     

* [World Happiness Statistics For 2017](https://www.kaggle.com/unsdsn/world-happiness)   

* [Countries of the world](https://www.kaggle.com/fernandol/countries-of-the-world)   

----
## Technical Evaluation

The data is moved from the cvs files into panda’s data frames to evaluate and rename columns to be easier to work with. 
Then using the sqlalchemy library, the dataframes are added to the gpd_db in the users postgres server.
Inside postgres, the SQL queries run at step 2-b clean extra spaces in the countries names, merge, and create a new table which is used for the visualizations. 
Through the use of matplotlib, the new tables are use to make the 9 visualizations shown in the ipymb file. (note only some of these visualizations have been chosen to appear on the html pages)


----
## Usage

1.    Make a "gdp_db" database in your local postgres server.
2.    Run the world_bank.ipymb notebook
* When in the notebook, update the pw variable inside of cell 3 to your postgres password
* @ line 30, you will need to run the SQL queries provided
3.    After steps 1&2 are complete, the rest of the cells in the notebook can be run, and the visualizations of the data will be displayed within the notebook. 
To view the visualizations without the use of the .ipymb file, you can use the index.html, however these are static images of the data. 
