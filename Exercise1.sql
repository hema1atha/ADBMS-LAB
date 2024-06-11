create database sales;
use sales;

create table salesman(
salesman_id int primary key,
name varchar(30),
city varchar(30),
comission float
);
insert into salesman (salesman_id,name,city,comission)
values
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"MC Lyon","Paris",0.14),
(5003,"Lauson Hen",null,0.12),
(5007,"Paul Adam","Rome",0.13);

select*from salesman;

+-------------+------------+----------+-----------+
| salesman_id | name       | city     | comission |
+-------------+------------+----------+-----------+
|        5001 | James Hoog | New York |      0.15 |
|        5002 | Nail Knite | Paris    |      0.13 |
|        5003 | Lauson Hen | NULL     |      0.12 |
|        5005 | Pit Alex   | London   |      0.11 |
|        5006 | MC Lyon    | Paris    |      0.14 |
|        5007 | Paul Adam  | Rome     |      0.13 |
+-------------+------------+----------+-----------+

create table customer(
customer_id int,
customer_name varchar(30),
city varchar(30),
grade int,
salesman_id int,
primary key (customer_id),
foreign key (salesman_id) references salesman (salesman_id)
);
insert into customer1(customer_id,customer_name,city,grade,salesman_id)
values
(3002,"Nick Rimando","New York",100,5001),
(3005,"Graham Zusi","California",200,5002),
(3001,"Brad Guzan","London",null,null),
(3004,"Fabian Johns","Paris",300,5006),
(3007,"Brad Davis","New York",200,5001),
(3009,"Geoff Camero","Berlin",100,null),
(3008,"Julian Green","London",300,5002),
(3003,"Jozy Altidor","Mancow",200,5007);

select *from customer;

+-------------+---------------+------------+-------+-------------+
| customer_id | customer_name | city       | grade | salesman_id |
+-------------+---------------+------------+-------+-------------+
|        3001 | Brad Guzan    | London     |  NULL |        NULL |
|        3002 | Nick Rimando  | New York   |   100 |        5001 |
|        3003 | Jozy Altidor  | Mancow     |   200 |        5007 |
|        3004 | Fabian Johns  | Paris      |   300 |        5006 |
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
|        3008 | Julian Green  | London     |   300 |        5002 |
|        3009 | Geoff Camero  | Berlin     |   100 |        NULL |
+-------------+---------------+------------+-------+-------------+

create table order(
order_no int,
purch_no float,
order_date date,
customer_id int,
salesman_id int
);
insert into order(order_no,purch_no,order_date,customer_id,salesman_id)
values
(70001,150.5,"2016-10-05",3005,5002),
(70009,270.5,"2016-09-10",3001,null),
(70002,65.5,"2016-10-05",3002,5001),
(70004,110.5,"2016-08-17",3009,null),
(7007,948.5,"2016-09-10",3005,5002),
(70005,2400.6,"2016-07-27",3007,5001),
(70008,5760,"2016-09-10",3002,5001),
(70010,19830.43,"2016-10-10",3004,5006),
(70003,2480,"2016-10-10",3009,null),
(700012,250.45,"2016-06-27",3008,5002),
(700011,75.5,"2016-05-17",3003,5007);

select*from order;

+----------+----------+------------+-------------+-------------+
| order_no | purch_no | order_date | customer_id | salesman_id |
+----------+----------+------------+-------------+-------------+
|    70001 |    150.5 | 2016-10-05 |        3005 |        5002 |
|    70009 |    270.5 | 2016-09-10 |        3001 |        NULL |
|    70002 |     65.5 | 2016-10-05 |        3002 |        5001 |
|    70004 |    110.5 | 2016-08-17 |        3009 |        NULL |
|     7007 |    948.5 | 2016-09-10 |        3005 |        5002 |
|    70005 |   2400.6 | 2016-07-27 |        3007 |        5001 |
|    70008 |     5760 | 2016-09-10 |        3002 |        5001 |
|    70010 |  19830.4 | 2016-10-10 |        3004 |        5006 |
|    70003 |     2480 | 2016-10-10 |        3009 |        NULL |
|   700012 |   250.45 | 2016-06-27 |        3008 |        5002 |
|   700011 |     75.5 | 2016-05-17 |        3003 |        5007 |
+----------+----------+------------+-------------+-------------+

select name,comission from salesman;

+------------+-----------+
| name       | comission |
+------------+-----------+
| James Hoog |      0.15 |
| Nail Knite |      0.13 |
| Lauson Hen |      0.12 |
| Pit Alex   |      0.11 |
| MC Lyon    |      0.14 |
| Paul Adam  |      0.13 |
+------------+-----------+

select distinct salesman_id from order1;

+-------------+
| salesman_id |
+-------------+
|        5002 |
|        NULL |
|        5001 |
|        5006 |
|        5007 |
+-------------+

select name,city from salesman where city="paris";

+------------+-------+
| name       | city  |
+------------+-------+
| Nail Knite | Paris |
| MC Lyon    | Paris |
+------------+-------+

select * from customer1 where grade=200;

+-------------+---------------+------------+-------+-------------+
| customer_id | customer_name | city       | grade | salesman_id |
+-------------+---------------+------------+-------+-------------+
|        3003 | Jozy Altidor  | Mancow     |   200 |        5007 |
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
+-------------+---------------+------------+-------+-------------+

select order_no,order_date,purch_no from order1 where salesman_id=5001;

+----------+------------+----------+
| order_no | order_date | purch_no |
+----------+------------+----------+
|    70002 | 2016-10-05 |     65.5 |
|    70005 | 2016-07-27 |   2400.6 |
|    70008 | 2016-09-10 |     5760 |
+----------+------------+----------+
