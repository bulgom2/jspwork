insert into product values('P1234', 'iPhone 6s', 800000, '4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
insert into product values('P1235', 'LG PC Gram', 1500000, '13-3inch, IPS LED display, 5th Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');

insert into product values('P1236', 'Galaxy Tab S', 900000, '212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from product;



show tables;

desc product;


alter table product change column p_name p_name varchar(20);