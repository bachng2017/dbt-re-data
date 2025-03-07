select
    table_name,
    column_name,
    metric,
    value as last_value,
    interval_length_sec,
    computed_on
from 
    {{ ref('re_data_base_metrics') }}
where
    cast(time_window_end as timestamp) = {{- time_window_end() -}}

