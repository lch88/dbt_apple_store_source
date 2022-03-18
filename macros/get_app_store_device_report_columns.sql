{% macro get_app_store_device_report_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "app_id", "datatype": dbt_utils.type_int()},
    {"name": "date", "datatype": dbt_utils.type_timestamp()},
    {"name": "device", "datatype": dbt_utils.type_string()},
    {"name": "impressions", "datatype": dbt_utils.type_int()},
    {"name": "impressions_unique_device", "datatype": dbt_utils.type_int()},
    {"name": "meets_threshold", "datatype": "boolean"},
    {"name": "page_views", "datatype": dbt_utils.type_int()},
    {"name": "page_views_unique_device", "datatype": dbt_utils.type_int()},
    {"name": "source_type", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
