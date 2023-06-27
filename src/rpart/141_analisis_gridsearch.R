

library(readr)
salida <- read_table("salida.txt")
View(salida)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  
# Ganancia más alta obtenida (este es el resultado que buscamos de esta corrida)

maximo <- max(salida$ganancia_promedio)
maximo

# Parámetros de dicha ganancia máxima


max_param <- data.frame(cp = salida$cp[181:190]  
                        , max_depth = salida$max_depth[181:190] 
                        , min_split = salida$min_split[181:190] 
                        , min_bucket = salida$min_bucket[181:190]  
                        , ganancia_promedio = salida$ganancia_promedio[181:190])

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------  

# Promedio de toda la salida

# Establecer la opción para evitar la notación científica
options(scipen = 999)

# Calcular el promedio de todas las columnas del dataset
promedios <- colMeans(salida, na.rm = TRUE)

# Mostrar los promedios sin notación científica
format(promedios, scientific = FALSE)

# Crear un data frame con los resultados
prom_param <- data.frame(Promedio = promedios)

# Mostrar el data frame con los resultados
print(prom_param)

# Rotar el dataset
prom_param <- t(prom_param)

# Mostrar el dataset rotado
print(prom_param)


