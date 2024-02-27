select deprivation.*, house.house_deprivation_percentage, risk.poverty_risk_percentage, social.risk_after_social_transfer_percentage
from poverty.poverty_deprivation as deprivation
join poverty.poverty_house_deprivation as house
on (deprivation.country=house.country and deprivation.year=house.year)
join poverty.poverty_risk as risk
on (deprivation.country=risk.country and deprivation.year=risk.year)
join poverty.poverty_risk_after_social_transfer as social
on (deprivation.country=social.country and deprivation.year=social.year);