tbl_users
---------
id_users            INT(11) Primary Key
username            VARCHAR(16) NOT NULL
passsword           TEXT
id_role             INT(11) NOT NULL
id_employeer        INT(11) NOT NULL

tbl_role
--------
id_role             INT(11) Primary Key
role_name           VARCHAR(16) NOT NULL

tbl_employeer
-------------
id_employeer        INT(11) Primary Key
nik                 VARCHAR(32) NOT NULL
employeer_name      VARCHAR(16) NOT NULL
gender              INT(1) DEFAULT 0 NOT NULL
place_birth         VARCHAR(32) NOT NULL
date_birth          DATE NOT NULL
address             TEXT
phone_number        VARCHAR(18)
photo               VARCHAR(32) DEFAULT 'default.jpeg' NOT NULL

tbl_setting
-----------
id_setting          INT(11) Primary Key
application_name    VARCHAR(32) NOT NULL
address             TEXT
logo_image          VARCHAR(32) NOT NULL
favicon             VARCHAR(32) NOT NULL
contact_number      VARCHAR(18) NOT NULL
email               VARCHAR(64) NOT NUll
facebook            VARCHAR(64) NOT NULL
instagram           VARCHAR(64) NOT NULL
twitter             VARCHAR(64) NOT NULL
youtbe              VARCHAR(64) NOT NULL

tbl_log
-------
id_log              INT(11) Primary Key
time                DATETIME NOT NULL
username            VARCHAR(24) NOT NULL
type                INT(11) NOT NULL
desc                VARCHAR(128) NOT NULL
description_detail  VARCHAR(128) NOT NULL

tbl_history_user
---------------
id_history_user     INT(11) Primary Key
username            VARCHAR(16) NOT NULL
id_role             INT(11) NOT NULL
type                VARCHAR(10) NOT NULL
time                INT(20) NOT NUll
ip_address          VARCHAR(64) NOT NULL
operating_system    VARCHAR(64) NOT NULL
browser             VARCHAR(64) NOT NULL