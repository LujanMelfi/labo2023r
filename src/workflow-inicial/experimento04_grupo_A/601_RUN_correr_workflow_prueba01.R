# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023r/src/workflow-inicial/experimento04_grupo_A/611_CA_reparar_dataset_EXP04_A.r")
source("~/labo2023r/src/workflow-inicial/experimento04_grupo_A/621_DR_corregir_drifting_EXP04_A.r")
source("~/labo2023r/src/workflow-inicial/experimento04_grupo_A/631_FE_historia_EXP04_A_prueba01.r")
source("~/labo2023r/src/workflow-inicial/experimento04_grupo_A/641_TS_training_strategy_EXP04_A_prueba01.r")

# ultimos pasos, muy lentos
source("~/labo2023r/src/workflow-inicial/experimento04_grupo_A/651_HT_lightgbm_EXP04_A_prueba01.r")
source("~/labo2023r/src/workflow-inicial/experimento04_grupo_A/661_ZZ_final_EXP04_A_prueba01.r")
