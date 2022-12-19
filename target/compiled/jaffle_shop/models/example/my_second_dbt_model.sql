-- Use the `ref` function to select from other models

select *
from "m10n"."dbt_m10n"."my_first_dbt_model"
where id = 1