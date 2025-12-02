-- (Query 5) Dias da semana com maior numero de visitas no site
-- Colunas: dia_semana, dia da semana, visitas (#)

select
    extract('dow' from visit_page_date) as dia_semana,
    case when extract('dow' from visit_page_date) = 0 then 'Domingo'
         when extract('dow' from visit_page_date) = 1 then 'Segunda-feira'
         when extract('dow' from visit_page_date) = 2 then 'Terça-feira'
         when extract('dow' from visit_page_date) = 3 then 'Quarta-feira'
         when extract('dow' from visit_page_date) = 4 then 'Quinta-feira'
         when extract('dow' from visit_page_date) = 5 then 'Sexta-feira'
         when extract('dow' from visit_page_date) = 6 then 'Sábado'
     else null end as "dia da semana",
    count(*) as "visitas (#)"

from sales.funnel
where visit_page_date betwween '2021-08-01' and '2021-08-31'
group by dia_semana
order by dia_semana