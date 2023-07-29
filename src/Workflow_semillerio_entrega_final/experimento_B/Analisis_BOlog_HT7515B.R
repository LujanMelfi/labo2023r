library(readr)
BO_log_HT7515B <- read_delim("src/Workflow_semillerio_entrega_final/experimento_B/BO_log_HT7515B.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7515B)

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

library(dplyr)

BO_gcia_descendente <- BO_log_HT7515B %>% arrange(desc(ganancia))

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

# Qué puesto ocupa la ganancia = 138.570.862


iteracion <- 16 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 16)
posicion_ranking

# Resultado = 58, 314 árboles

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 137.401.895

iteracion <- 14 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 14)
posicion_ranking

# Resultado = 60, 52 árboles, pero feature fraction = 0.97248609
# estímulos = 35.336 
# No tiene sentido la ganancia ni los demás parámetros
# Abandono este experimento



