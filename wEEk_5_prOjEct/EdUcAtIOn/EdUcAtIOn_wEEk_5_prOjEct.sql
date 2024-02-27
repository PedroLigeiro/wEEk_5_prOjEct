select leavers.*, tertiary.tertiary_attainment_percentage
from education.education_early_leavers as leavers
join education.education_tertiary_attainment as tertiary
on (leavers.country=tertiary.country and leavers.year=tertiary.year);