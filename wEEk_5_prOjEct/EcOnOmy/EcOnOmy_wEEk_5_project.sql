select bottom.*, disposable.disposable_income_per_capita, meet.inability_make_ends_meet_percentage, gdp.gdp_per_capita, mean.mean_income, median.median_income, power.purchasing_power
from economy.economy_bottom_40_income_share as bottom
join economy.economy_disposable_income as disposable
on (bottom.country=disposable.country and bottom.year=disposable.year)
join economy.economy_ends_meet as meet
on (bottom.country=meet.country and bottom.year=meet.year)
join economy.economy_gdp_per_capita as gdp
on (bottom.country=gdp.country and bottom.year=gdp.year)
join economy.economy_mean_income as mean
on (bottom.country=mean.country  and bottom.year=mean.year)
join economy.economy_median_income as median
on (bottom.country=median.country and bottom.year=median.year)
join economy.economy_purchasing_power as power
on (bottom.country=power.country and bottom.year=power.year);