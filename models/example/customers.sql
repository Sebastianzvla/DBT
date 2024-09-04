{{ config(materialized='table')}}



with customer as (

 SELECT * FROM 

 {{source ('sourcedb', 'MY_FIRST_DBT_MODEL')}}

)
select * from customer