select emigration.*, immigration.immigration
from migration.migration_emigration as emigration
join migration.migration_immigration as immigration
on (emigration.country=immigration.country and emigration.year=immigration.year);