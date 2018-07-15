Execute sp_addlogin 'Vasya', '1234', 'Pet_Shop'
Execute sp_addlogin 'Abay', '4321', 'Pet_Shop'
Execute sp_addlogin 'Aidana', 'qwer', 'Pet_Shop'
go
use Pet_Shop
go
Execute sp_grantdbaccess 'Vasya'
Execute sp_grantdbaccess 'Abay'
Execute sp_grantdbaccess 'Aidana'
go
Execute sp_addrolemember 'db_owner','Vasya'
Execute sp_addrolemember 'db_accessadmin','Abay'
Execute sp_addrolemember 'db_securityadmin','Abay'
Execute sp_addrolemember 'db_denydatareader','Abay'
Execute sp_addrolemember 'db_denydatawriter','Abay' 
Execute sp_addrolemember 'db_datareader','Aidana'
Execute sp_addrolemember 'db_datawriter','Aidana'