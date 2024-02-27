select d.*, a.assault_rate_per_100k, h.homicide_rate_per_100k
from crime.crime_death_rate as d
join crime.crime_assault as a
on (d.country=a.country and d.year=a.year)
join crime.crime_homicide as h
on (d.country=h.country and d.year=h.year);