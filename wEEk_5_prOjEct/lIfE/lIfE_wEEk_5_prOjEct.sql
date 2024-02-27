select expectancy.*, healthy_2021.healthy_expectancy_2004_2021
from life.life_expectancy as expectancy
join life.life_healthy_expectancy_2004_2021 as healthy_2021
on (expectancy.country=healthy_2021.country and expectancy.year=healthy_2021.year);