library(readr)
HT4230 <- read_delim("E:/MCD/labo/datasets/exp/HT4230/HT4230.txt", 
                     delim = "\t", escape_double = FALSE, 
                     trim_ws = TRUE)
View(HT4230)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  
# Ganancia más alta obtenida (este es el resultado que buscamos de esta corrida)
  
maximo <- max(HT4230$ganancia)
maximo

# Parámetros de dicha ganancia máxima


max_param <- data.frame(objective = HT4230$objective[56]  
                        , metric = HT4230$metric[56] 
                        , first_metric_only = HT4230$first_metric_only[56] 
                        , boost_from_average = HT4230$boost_from_average[56]  
                        , feature_pre_filter = HT4230$feature_pre_filter[56]
                        , verbosity = HT4230$verbosity[56]
                        , max_depth = HT4230$max_depth[56]
                        , min_gain_to_split = HT4230$min_gain_to_split[56]
                        , lambdal1 = HT4230$lambda_l1[56]
                        , lambdal2 = HT4230$lambda_l2[56]
                        , max_bin = HT4230$max_bin[56]
                        , num_iterations = HT4230$num_iterations[56]
                        , force_row_wise = HT4230$force_row_wise[56]
                        , seed = HT4230$seed[56]
                        , learing_rate = HT4230$learning_rate[56]
                        , feature_fraction = HT4230$feature_fraction[56]
                        , min_data_in_leaf = HT4230$min_data_in_leaf[56]
                        , num_leaves = HT4230$num_leaves[56]
                        , envios = HT4230$envios[56]
                        , ganancia = HT4230$ganancia[56]
                        , iteracion = HT4230$iteracion[56]
                        )