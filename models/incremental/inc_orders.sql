{{
    config(
        materialized='incremental',
        unique_key='id'
    )

    models:
        +incremental_strat    
}}

select *
from {{ source('jaffle_shop', 'customers') }}