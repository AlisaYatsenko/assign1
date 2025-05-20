--об'єднуємо поля з п'яти таблиць за іменами за допомогою join
select e.name, er.name, e.company, s.money, ex.years, f.drink
from employees e
join employers er on e.employer=er.name
join experiences ex on ex.name = e.name
join salaries s on s.employee = e.name
join favdrink f on f.name = e.name;

--обираємо всіх employers які не працюють в гугл
select * from employers where company != 'google';

--сортуємо працівників від найдосвідченішого до найменш досвідченого
select name, years from experiences
order by years desc;

--два рядки з таблиці favdrink
select * from favdrink limit 2;

--створили cte з усіма відомими employees і employers використовуючи union all, бо повторів немає
--обираємо компанії де працюють більше ніж одна відома людина
with cte_employ as(
	select name, company from employees
	union all
	select name,company
	from employers
)
select company, count(*) as cnt
from cte_employ
group by company
having cnt > 1;
