library(tidyverse)
library(RSQLite)
#Si se quiere utilizar postres seria library(RPostgreSQL)

# Definimos la conexion
 
objDB <- dbConnect(SQLite(),dbname='db.sqlite')
#Esto lista todas las tablas
 dbListTables(objDB) 
dbGetQuery(objDB,"SELECT * FROM District")