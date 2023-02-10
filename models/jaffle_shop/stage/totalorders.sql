{{ config (materialized = 'view', database = 'Analytics', schema = 'Reporting')}}
select *
from
    {{
        metrics.calculate(
            metric("total_orders"), grain="month", dimensions=["status"]
        )
    }}
