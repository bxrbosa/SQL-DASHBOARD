-- (Query 3) Marcas que mais venderam no mês
-- Colunas: marca, vendas(#)

select
    pro.brand as marca,
    count(fun.paid_date) as "vendas (#)"

from sales.funnel as fun
left join sales.products as pro
    on fun.product_id = pro.product_id
where fun.paid_date betwween '2021-08-01' and '2021-08-31'
group by marca
order by "vendas (#)" desc
limit 5