{{ config(enabled=var('apple_store__using_downloads', True)) }}

select * from {{ var('downloads_territory_report') }}
