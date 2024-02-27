select net.*, rate.employment_rate, inequality.income_inequality_ratio, risk.work_poverty_risk_percentage
from work.work_average_annual_net_earnings as net
join work_employment_rate as rate
on (net.country=rate.country and net.year=rate.year)
join work_income_inequality_distribution_s80_s20_quintile_share_ratio as inequality
on (net.country=inequality.country and net.year=inequality.year)
join work_poverty_risk as risk
on (net.country=risk.country and net.year=risk.year);