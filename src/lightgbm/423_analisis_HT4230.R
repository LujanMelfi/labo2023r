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


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

# Parámetros segunda ganancia máxima

segunda_max_param <- data.frame(objective = HT4230$objective[117]  
                               , metric = HT4230$metric[117] 
                               , first_metric_only = HT4230$first_metric_only[117] 
                               , boost_from_average = HT4230$boost_from_average[117]  
                               , feature_pre_filter = HT4230$feature_pre_filter[117]
                               , verbosity = HT4230$verbosity[117]
                               , max_depth = HT4230$max_depth[117]
                               , min_gain_to_split = HT4230$min_gain_to_split[117]
                               , lambdal1 = HT4230$lambda_l1[117]
                               , lambdal2 = HT4230$lambda_l2[117]
                               , max_bin = HT4230$max_bin[117]
                               , num_iterations = HT4230$num_iterations[117]
                               , force_row_wise = HT4230$force_row_wise[117]
                               , seed = HT4230$seed[117]
                               , learing_rate = HT4230$learning_rate[117]
                               , feature_fraction = HT4230$feature_fraction[117]
                               , min_data_in_leaf = HT4230$min_data_in_leaf[117]
                               , num_leaves = HT4230$num_leaves[117]
                               , envios = HT4230$envios[117]
                               , ganancia = HT4230$ganancia[117]
                               , iteracion = HT4230$iteracion[117]
                                )

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  
# Parámetros cuarta ganancia máxima
  
cuarta_max_param <- data.frame(objective = HT4230$objective[95]  
                               , metric = HT4230$metric[95] 
                               , first_metric_only = HT4230$first_metric_only[95] 
                               , boost_from_average = HT4230$boost_from_average[95]  
                               , feature_pre_filter = HT4230$feature_pre_filter[95]
                               , verbosity = HT4230$verbosity[95]
                               , max_depth = HT4230$max_depth[95]
                               , min_gain_to_split = HT4230$min_gain_to_split[95]
                               , lambdal1 = HT4230$lambda_l1[95]
                               , lambdal2 = HT4230$lambda_l2[95]
                               , max_bin = HT4230$max_bin[95]
                               , num_iterations = HT4230$num_iterations[95]
                               , force_row_wise = HT4230$force_row_wise[95]
                               , seed = HT4230$seed[95]
                               , learing_rate = HT4230$learning_rate[95]
                               , feature_fraction = HT4230$feature_fraction[95]
                               , min_data_in_leaf = HT4230$min_data_in_leaf[95]
                               , num_leaves = HT4230$num_leaves[95]
                               , envios = HT4230$envios[95]
                               , ganancia = HT4230$ganancia[95]
                               , iteracion = HT4230$iteracion[95]
                                )

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  
# Parámetros octava ganancia máxima
  
octava_max_param <- data.frame(objective = HT4230$objective[116]  
                               , metric = HT4230$metric[116] 
                               , first_metric_only = HT4230$first_metric_only[116] 
                               , boost_from_average = HT4230$boost_from_average[116]  
                               , feature_pre_filter = HT4230$feature_pre_filter[116]
                               , verbosity = HT4230$verbosity[116]
                               , max_depth = HT4230$max_depth[116]
                               , min_gain_to_split = HT4230$min_gain_to_split[116]
                               , lambdal1 = HT4230$lambda_l1[116]
                               , lambdal2 = HT4230$lambda_l2[116]
                               , max_bin = HT4230$max_bin[116]
                               , num_iterations = HT4230$num_iterations[116]
                               , force_row_wise = HT4230$force_row_wise[116]
                               , seed = HT4230$seed[116]
                               , learing_rate = HT4230$learning_rate[116]
                               , feature_fraction = HT4230$feature_fraction[116]
                               , min_data_in_leaf = HT4230$min_data_in_leaf[116]
                               , num_leaves = HT4230$num_leaves[116]
                               , envios = HT4230$envios[116]
                               , ganancia = HT4230$ganancia[116]
                               , iteracion = HT4230$iteracion[116]
                                )