drop table if exists t_book;
drop table if exists t_borrow;
drop table if exists t_category;
drop table if exists t_card;
drop table if exists t_admin;

-- 图书基本信息表
create table t_book (
  id char(32) primary key,
  ISBN char(13),
  book_Name varchar(255),
  author varchar(255),
  publisher varchar(255),
  year char(4),
  type varchar(255),
  price varchar(255),
  current_Inventory varchar(255),
  total_Inventory varchar(255)
);
-- 图书借阅表
create table t_borrow(
  id char(32) primary key,
  borrow_ID varchar(255),
  card_ID varchar(255),
  book_Name varchar(255),
  borrow_Date char(10),
  return_Date char(10),
  status char(2)
);
-- 图书分类表
create table t_category (
  id char(32) primary key,
  type varchar(255),
  description varchar(255)
);
-- 借书卡表
create table t_card (
  id char(32) primary key,
  card_ID char(11),
  user_Name varchar(255),
  sex char(1),
  school varchar(255),
  phone char(11)
);
-- 管理员表
create table t_admin (
  id char(32) primary key,
  admin_name varchar(255),
  sex char(1),
  phone char(11),
  admin_Account varchar(20),
  password varchar(255)
);

insert into t_book(book_ID,ISBN,book_Name,author,publisher,year,type,price,current_Inventory,total_Inventory) values
("1", "9787536692930", "《三体》", "刘慈欣", "中国科学技术出版社", "2006", "科幻", "137.6", "1", "2"),
("2", "9787802506077", "《红楼梦（全四卷）》", "曹雪芹", "中国文化出版社", "2011", "古典", "298", "1", "1"),
("3", "9787536693968", "《三体2：黑暗森林》", "刘慈欣", "中国科学技术出版社", "2008", "科幻", "114.5", "1", "2");

insert into `t_borrow` values ('2168aeae60e44a19a231ba6bc8fe7a1e', 
'0c89307810f14dec844c2f1faa7fa27a', '32210034351', '2023-05-20', '2023-06-20');
insert into `t_borrow` values ('2dbb10bcf1be4cf89bdaf8aa37735b34', 
'1d771301f8e84b81ade9f39e1f388d1b', '31210034351', '2023-05-20', '2023-06-20');
insert into `t_borrow` values ('7e46cc8aa5f0499f8063fe62d37f11f5', 
'3e39ef5249924e88ad90a6dc384818d4', '32210034351', '2023-05-20', '2023-06-20');

select * from t_book;
select * from t_borrow;
select * from t_category;
select * from t_card;
select * from t_admin;