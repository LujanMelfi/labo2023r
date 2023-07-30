library(readr)
BO_log_HT7514D <- read_delim("src/Workflow_semillerio_entrega_final/experimento_D/BO_log_HT7514D.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7514D)

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

library(dplyr)

BO_gcia_descendente <- BO_log_HT7514D %>% arrange(desc(ganancia))

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

# Qué puesto ocupa la ganancia = 68.470.804


iteracion <- 58 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 58)
posicion_ranking

# Resultado = 33, 239 árboles

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 68.382.901

iteracion <- 60 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 60)
posicion_ranking

# Resultado = 37, 246 árboles

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 65.844.979

iteracion <- 22 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 22)
posicion_ranking

# Resultado = 54, 68 árboles ojo cant de envíos



