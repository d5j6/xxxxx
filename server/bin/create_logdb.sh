#!/bin/sh
HOSTNAME="127.0.0.1"                   #���ݿ�Server��Ϣ
DBNAME="collector"                  #Ҫ���������ݿ�Ŀ�����
PORT="3306"
USERNAME="root"
PASSWORD="123456"

mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD}    <<QUERY_SQL 
CREATE DATABASE ${DBNAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use ${DBNAME};
source ./logdb.sql;
QUIT 
QUERY_SQL
