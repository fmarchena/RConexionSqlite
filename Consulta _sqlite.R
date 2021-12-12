 

#Si se quiere utilizar postgres seria library(RPostgreSQL)
library(RSQLite)
library(rs)
library(DBI)
library(rgdal)

utils::download.file(file.path('http://x/db.sqlite'),
                     sqlFile <- tempfile("tp",fileext=".sqlite"),method="libcurl", mode = "wb" )
print(sqlFile) 
# Definimos la conexion
objConecDB <- dbConnect(SQLite(),dbname=sqlFile, synchronous= NULL )
#Esto lista todas las tablas
dbListTables(objConecDB) 
#dataPrios <- dbGetQuery(objConecDB,"SELECT * FROM PrincipalesRiosPanama")

print(objConecDB) 

