{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww17660\viewh13460\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE departments (\
	dept_no VARCHAR(4)NOT NULL,\
	dept_name VARCHAR(30) NOT NULL\
);\
	\
--     "dept_no" CHAR(4)  NOT NULL,\
--     "dept_name" VARCHAR(100)  NOT NULL,\
--     CONSTRAINT "departments" PRIMARY KEY (\
--         "dept_no"\
--      )\
-- );\
\
CREATE TABLE "dept_emp" (\
    emp_no INTEGER NOT NULL,\
    dept_no VARCHAR(4) NOT NULL\
);\
\
CREATE TABLE "dept_manager" (\
    dept_no VARCHAR(4) NOT NULL,\
    emp_no INTEGER  NOT NULL\
);\
\
CREATE TABLE "employees" (\
    emp_no INTEGER   NOT NULL,\
	emp_title_id VARCHAR (30),\
	birth_date VARCHAR (30) NOT NULL,\
-- 	select replace(convert(varchar, getdate(),101),'/',''),\
    first_name VARCHAR(30) NOT NULL,\
    last_name VARCHAR(30) NOT NULL,\
    sex VARCHAR(1) NOT NULL,\
    hire_date VARCHAR (30) NOT NULL\
);\
\
CREATE TABLE "salaries" (\
    emp_no INTEGER   NOT NULL,\
    salary INTEGER   NOT NULL\
);\
\
CREATE TABLE "titles" (\
    title_id VARCHAR(30) NOT NULL,\
    title VARCHAR(30)   NOT NULL\
);}