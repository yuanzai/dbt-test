
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(
    materialized='table',
    alias='final_data',
    schema='small2',
    indexes=[
      {'columns': ['_airbyte_ab_id'], 'unique': True},
      {'columns': ['seq'], 'unique': True},
    ]
) }}

select *
from small2.data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
