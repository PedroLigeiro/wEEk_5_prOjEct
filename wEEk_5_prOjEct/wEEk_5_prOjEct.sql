select crime.*, economy.*, education.*, life.*, migration.*, poverty.*, work.*
from project.crime
join project.economy
on (crime.country=economy.country and crime.year=economy.year)
join project.education
on (crime.country=education.country and crime.year=education.year)
join project.life
on (crime.country=life.country and crime.year=life.year)
join project.migration
on (crime.country=migration.country and crime.year=migration.year)
join project.poverty
on (crime.country=poverty.country and crime.year=poverty.year)
join project.work
on (crime.country=work.country and crime.year=work.year);