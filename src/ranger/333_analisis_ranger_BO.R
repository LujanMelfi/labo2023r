
library(readr)
ranger_BO <- read_delim("E:/MCD/labo/datasets/exp/HT330/ranger_BO.txt", 
                        delim = "\t", escape_double = FALSE, 
                        trim_ws = TRUE)
View(ranger_BO)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  
# Ganancia más alta obtenida (este es el resultado que buscamos de esta corrida)
  
maximo <- max(ranger_BO$ganancia)
maximo

# Parámetros de dicha ganancia máxima


max_param <- data.frame(num.trees = ranger_BO$num.trees[34]  
                        , max.depth = ranger_BO$max.depth[34] 
                        , min.node.size = ranger_BO$min.node.size[34] 
                        , mtry = ranger_BO$mtry[34]  
                        , xval_folds = ranger_BO$xval_folds[34]
                        , ganancia = ranger_BO$ganancia[34]
                        , iteracion = ranger_BO$iteracion[34]
                        )
