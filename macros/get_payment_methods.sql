{% macro get_payment_methods() -%}
{% set payment_methods_query %} 
    select distinct PAYMENT_METHOD from {{ ref('raw_payments') }} order by 1
{% endset %} 
{% set results = run_query(payment_methods_query) %}
{# Return the first column #}
{% if execute %} {% set results_list = results.columns[0].values() %}
{% else %} {% set results_list = [] %}
{% endif %}
{{ return(results_list) }}
{%- endmacro %}
