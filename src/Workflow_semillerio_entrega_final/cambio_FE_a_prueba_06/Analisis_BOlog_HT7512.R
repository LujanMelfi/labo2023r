library(readr)
BO_log_HT7512 <- read_delim("src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/BO_log_HT7512.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7512)

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

library(dplyr)

BO_gcia_descendente <- BO_log_HT7512 %>% arrange(desc(ganancia))

# Ganancia más alta obtenida

maximo <- max(BO_gcia_descendente$ganancia)
maximo

posicion_ranking <- which(BO_gcia_descendente$ganancia == maximo)
posicion_ranking

# Ganancia mínima obtenida 

minimo <- min(BO_gcia_descendente$ganancia)
minimo

posicion_ranking <- which(BO_gcia_descendente$ganancia == minimo)
posicion_ranking

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 66.976.514

iteracion <- 16 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 16)
posicion_ranking

# Resultado = 54, elijo éste por la cantidad de árboles

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 67.896.919

iteracion <- 8 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 8)
posicion_ranking

# Resultado = 47 



