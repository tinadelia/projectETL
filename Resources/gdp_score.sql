select gdp."Country", gdp."US_dollars",gdp."GDP_Ranking", happiness."Happiness_Rank" into 
table gdp_score
from gdp
left join happiness
on gdp."Country"=happiness."Country_name";