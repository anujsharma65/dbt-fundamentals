with
payment as(
  select orderid as order_id,
  id as payment_id,
  paymentmethod as payment_method,
 amount/100 as amount,
 status,
 created as created_at

  from {{source('stripe','payment')}}

)

select * from payment