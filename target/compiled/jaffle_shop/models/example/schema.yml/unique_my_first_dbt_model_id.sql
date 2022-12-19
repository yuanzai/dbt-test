
    
    

select
    id as unique_field,
    count(*) as n_records

from "m10n"."dbt_m10n"."my_first_dbt_model"
where id is not null
group by id
having count(*) > 1


