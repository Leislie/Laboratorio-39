# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 39- API DataMexico

# Ir a la página https://api.datamexico.org/ui/
# Seleccionar el cubo: coneval_gini_mun
# Seleccionar Add drilldown => Greography => Geography => Municipality
# Seleccionar Add drilldown => Year
# En Measures seleccionar el checklist de GINI e Income Rate
# Dar clic en Execute query
# Dar clic en Debug drawer (ícono cámara fotográfica) y en la opción Download dataset dar clic
# en CSV file, JSON Tidy file y  JSON Arrays file para descargar los archivos (tres en total)


# Ya en R instalar paquetería y llamar a la libreria
install.packages("jsonlite")
library(jsonlite)

# Seleccionar archivo, en este caso el que se descargo de DataMexico (municipality-year-records)
file.choose()

# Con la ruta del archivo crear objeto
datos_api2 <- fromJSON("C:\\Users\\leisl\\OneDrive\\Doctorado\\Semestre-3\\Temas-Selectos-1-Complejidad-Económica\\Modulo3\\Semana6-Labs-Salas-Cápsulas\\Lab39\\DataMexico\\Municipality-Year-records.json")

# Ver la clase de datos generados (en este caso es una lista)
class(datos_api2)

# Ver los nombres de las filas de la lista
names(datos_api2)

# Para crear un objeto tipo dataframe extrayendo la data de la lista ejecutar siguiente comando
Tarea_API <- as.data.frame((datos_api2[["data"]]))

# Corroborar que el objeto creado es un dataframe
class(Tarea_API)

# Guardar el objeto creado (dataframe) como un archivo csv
write.csv(Tarea_API, file = "Tarea_API.csv")

# Para ver la ruta del archivo 
getwd()