library(readr)
BO_log_HT7510 <- read_delim("src/Workflow_semillerio_entrega_final/BO_log_HT7510.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7510)

#--------------------------------------------------------------------------------
#--------------------------------------------------------------------------------

library(dplyr)

BO_gcia_descendente <- BO_log_HT7510 %>% arrange(desc(ganancia))

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
