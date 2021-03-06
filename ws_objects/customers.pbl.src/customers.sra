﻿$PBExportHeader$customers.sra
$PBExportComments$Generated Application Object
forward
global type customers from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type customers from application
string appname = "customers"
end type
global customers customers

on customers.create
appname="customers"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on customers.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile SQL Anywhere 11 Demo bbb
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=sample;UID=DBA;PWD=sql'"
Connect;

open(w_main)
end event

