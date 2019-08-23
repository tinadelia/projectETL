select * into table country_score
from happiness
left join countries
on countries."Country" = happiness."Country_name";
