
library(readr)
HT3710 <- read_delim("E:/MCD/labo/datasets/exp/HT3710/HT3710.txt", 
                     delim = "\t", escape_double = FALSE, 
                     trim_ws = TRUE)
View(HT3710)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  
# Ganancia más alta obtenida (este es el resultado que buscamos de esta corrida)
  
maximo <- max(HT3710$ganancia)
maximo

# Parámetros de dicha ganancia máxima

# Vector de filas deseadas

filas_deseadas <- c(77, 91, 92, 94, 102, 107, 124, 125, 129, 130, 135, 139, 145, 
                    146, 148, 152, 153, 154, 155, 156, 157, 158, 159, 161, 163, 
                    164, 165, 166)

# Selección de filas deseadas del dataset

max_param <- data.frame(cp = HT3710$cp[filas_deseadas],
                        max_depth = HT3710$maxdepth[filas_deseadas],
                        min_split = HT3710$minsplit[filas_deseadas],
                        min_bucket = HT3710$minbucket[filas_deseadas],
                        ganancia_promedio = HT3710$ganancia[filas_deseadas])

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

#install.packages("openxlsx")
  
# Cargar el paquete openxlsx

library(openxlsx)

# Ruta y nombre de archivo para guardar resultados 

ruta_archivo <- "E:/MCD/labo/datasets/exp/HT3710/max_param_371_BO_binaria.xlsx"

# Guardar el dataframe max_param en un archivo Excel

write.xlsx(max_param, ruta_archivo, rowNames = FALSE)


