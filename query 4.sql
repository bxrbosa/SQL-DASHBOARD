-- (Query 4) lojas que mais venderam no mês
-- Colunas: loja, vendas(#)

select
    fun.store_id as loja,
    count(fun.paid_date) as "vendas (#)"

from sales.funnel as fun
where fun.paid_date betwween '2021-08-01' and '2021-08-31'
group by loja
order by "vendas (#)" desc
limit 5