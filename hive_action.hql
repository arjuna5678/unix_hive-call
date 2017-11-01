---rem: both database or schema are same. (see language mannual)
---- variable passed in sh where it is called

create schema IF NOT EXISTS ${hiveconf:DB_NAME}
COMMENT "DB/schema created by Call by unix sh and for test by AD";

show schemas;

use ${hiveconf:DB_NAME};

CREATE TABLE IF NOT EXISTS ${hiveconf:DB_NAME}.${hiveconf:TABLE_NAME} 
(
id int,
age int,
sex string,
dept string,
zip_c string
)
row format delimited fields terminated by '|'
LINES TERMINATED BY '\n'
stored as textfile;

show tables;

LOAD DATA LOCAL INPATH '/home/dasarjuna5678/Input/ml-100k/u.user' OVERWRITE INTO TABLE ${hiveconf:DB_NAME}.${hiveconf:TABLE_NAME};

select * from ${hiveconf:DB_NAME}.${hiveconf:TABLE_NAME};
