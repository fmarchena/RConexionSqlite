#Si se quiere utilizar postres seria library(RPostgreSQL)
library(RSQLite)
library(DBI)
# Definimos la conexion
objConecDB <- dbConnect(SQLite(),dbname='db.sqlite')
#Esto lista todas las tablas
#dbListTables(objDB) 
dataPrios <- dbGetQuery(objConecDB,"SELECT * FROM PrincipalesRiosPanama")
dbDisconnect(objConecDB)
print(dataPrios) 