library(readr)
BO_log_HT7511 <- read_delim("src/Workflow_semillerio_entrega_final/sin_canaritos_asesinos/BO_log_HT7511.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7511)

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

library(dplyr)

BO_gcia_descendente <- BO_log_HT7511 %>% arrange(desc(ganancia))

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

# Qué puesto ocupa la ganancia = 68.575.853

iteracion <- 66 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 66)
posicion_ranking

# Resultado = 7 , veo que son demasiados árboles, me paso a otra con menor cantidad

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------

# Qué puesto ocupa la ganancia = 63.089.078

iteracion <- 21 # lo busco por N° de iteración dado que no reconoce la ganancia por los decimales, solución más simple

posicion_ranking <- which(BO_gcia_descendente$iteracion_bayesiana == 21)
posicion_ranking

# Resultado = 61 voy a usar ésta en semillerío



