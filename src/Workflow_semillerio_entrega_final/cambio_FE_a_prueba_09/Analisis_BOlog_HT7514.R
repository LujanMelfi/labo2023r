library(readr)
BO_log_HT7514 <- read_delim("src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_09/BO_log_HT7514.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7514)

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

library(dplyr)

BO_gcia_descendente <- BO_log_HT7514%>% arrange(desc(ganancia))

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

# Qué puesto ocupa la ganancia = 68.526.793

iteracion <- 16 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 16)
posicion_ranking

# Resultado = 29, elijo éste por la cantidad de árboles

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 69.962.951

iteracion <- 60 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 60)
posicion_ranking

# Resultado = 7, elijo éste por la cantidad de árboles 



