select 
    id as customer_id,
	ORDERID as order_id,
	PAYMENTMETHOD as payment_method,
	STATUS,
	AMOUNT
from {{ source('stripe', 'payment') }}