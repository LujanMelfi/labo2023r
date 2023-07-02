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


max_param <- data.frame(objective = HT4230$objective[59]  
                        , metric = HT4230$metric[59] 
                        , first_metric_only = HT4230$first_metric_only[59] 
                        , boost_from_average = HT4230$boost_from_average[59]  
                        , feature_pre_filter = HT4230$feature_pre_filter[59]
                        , verbosity = HT4230$verbosity[59]
                        , max_depth = HT4230$max_depth[59]
                        , min_gain_to_split = HT4230$min_gain_to_split[59]
                        , lambdal1 = HT4230$lambda_l1[59]
                        , lambdal2 = HT4230$lambda_l2[59]
                        , max_bin = HT4230$max_bin[59]
                        , num_iterations = HT4230$num_iterations[59]
                        , force_row_wise = HT4230$force_row_wise[59]
                        , seed = HT4230$seed[59]
                        , learing_rate = HT4230$learning_rate[59]
                        , feature_fraction = HT4230$feature_fraction[59]
                        , min_data_in_leaf = HT4230$min_data_in_leaf[59]
                        , num_leaves = HT4230$num_leaves[59]
                        , envios = HT4230$envios[59]
                        , ganancia = HT4230$ganancia[59]
                        , iteracion = HT4230$iteracion[59]
                        )