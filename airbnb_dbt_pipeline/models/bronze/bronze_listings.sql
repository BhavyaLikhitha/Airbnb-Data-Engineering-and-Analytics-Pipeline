{{ config(materialized='incremental') }}
{# 
{% set incremental_flag = 1 %}
{% set incremental_col = CREATED_AT %} #}

SELECT * FROM  {{ source('staging', 'listings') }}

{% if is_incremental() %}
    WHERE CREATED_AT > (SELECT COALESCE(MAX(CREATED_AT), '1900-01-01') FROM {{ this }})
{% endif %}