use ConstructionDB;

-- 1
select *
from Projects;

-- 2
select *
from Projects
where Status = 'Active';

-- 3
select *
from Projects
where City = 'Seattle';

-- 4
select ProjectName, Budget
from Projects
where Budget > 1000000.00
order by Budget desc;

-- 5
select *
from Contractors;

-- 6
select ContactName, Specialty
from Contractors
where Specialty in ('Electrical', 'Plumbing');

-- 7
select PaymentID, Amount
from Payments
where Amount > 50000.00;

-- 8
select PaymentID, Amount, ContractorID, Amount, PaymentDate
from Payments
where PaymentDate >= '2024-01-01'
  and PaymentDate < '2025-01-01';

-- 9
select Status, count(*) as StatusCount
from Projects
group by Status;

-- 10
select sum(Budget) as TotalBudget
from Projects;
