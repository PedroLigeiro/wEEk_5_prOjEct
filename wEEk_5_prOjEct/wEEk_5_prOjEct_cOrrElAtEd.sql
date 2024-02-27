select deprivation.*, house.house_deprivation_percentage, risk.poverty_risk_percentage, social.risk_after_social_transfer_percentage, 
rate.employment_rate, inequality.income_inequality_ratio, work_poverty.work_poverty_risk_percentage, 
leavers.early_leavers_percentage, 
bottom.bottom_40_income_share, meet.inability_make_ends_meet_percentage, mean.mean_income, median.median_income, 
death.death_rate, homicide.homicide_rate_per_100k
from poverty.poverty_deprivation as deprivation
join poverty.poverty_house_deprivation as house
on (deprivation.country=house.country and deprivation.year=house.year)
join poverty.poverty_risk as risk
on (deprivation.country=risk.country and deprivation.year=risk.year)
join poverty.poverty_risk_after_social_transfer as social
on (deprivation.country=social.country and deprivation.year=social.year)
join work.work_employment_rate as rate
on (deprivation.country=rate.country and deprivation.year=rate.year)
join work.work_income_inequality_distribution_s80_s20_quintile_share_ratio as inequality
on (deprivation.country=inequality.country and deprivation.year=inequality.year)
join work.work_poverty_risk as work_poverty
on (deprivation.country=work_poverty.country and deprivation.year=work_poverty.year)
join education.education_early_leavers as leavers
on (deprivation.country=leavers.country and deprivation.year=leavers.year)
join economy.economy_bottom_40_income_share as bottom
on (deprivation.country=bottom.country and deprivation.year=bottom.year)
join economy.economy_ends_meet as meet
on (deprivation.country=meet.country and deprivation.year=meet.year)
join economy.economy_mean_income as mean
on (deprivation.country=mean.country  and deprivation.year=mean.year)
join economy.economy_median_income as median
on (deprivation.country=median.country and deprivation.year=median.year)
join crime.crime_death_rate as death
on (deprivation.country=death.country and deprivation.year=death.year)
join crime.crime_homicide as homicide
on (deprivation.country=homicide.country and deprivation.year=homicide.year);