mysql -proot -e 'CREATE DATABASE `db_dev`;';
mysql -proot -e "SET GLOBAL sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';";
mysql -proot -e "CREATE USER 'dev'@'%' IDENTIFIED WITH mysql_native_password;";
mysql -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'dev'@'%' WITH GRANT OPTION;";