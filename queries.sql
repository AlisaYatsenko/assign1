select e.name, er.name, e.company, s.money, ex.years, f.drink
from employees e
join employers er on e.employer=er.name
join experiences ex on ex.name = e.name
join salaries s on s.employee = e.name
join favdrink f on f.name = e.name;

select * from employers where company != 'google';

select name, years from experiences
order by years desc;

select * from favdrink limit 2;

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
