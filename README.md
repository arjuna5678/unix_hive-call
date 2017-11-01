# unix_hive-call

Sample unix shell script calling hive sql to do some hive activity. Credential are passed as paramater/confi file.
hive_action.hql : Hive SQL for datawarehouse activities. Reading DB credential passed as variable through hive -hiveconfig 
hive_call,sh  : shell script calling hive_action.hql to perform the hive activity.
proj_db.config : DB credential and proj level variables/properties

Linux : 3.10
Hadoop : 2.7
Hive : 2.3
MySql : 5.5

Run: sh hive_call.sh  
