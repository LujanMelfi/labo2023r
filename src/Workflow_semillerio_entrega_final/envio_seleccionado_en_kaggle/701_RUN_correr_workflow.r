# Corrida general del workflow Semillerio

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# Corrida de cada paso del workflow

# Primer experimento
source("~/labo2023r/src/Workflow_semillerio_entrega_final/711_CA_reparar_dataset.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/721_DR_corregir_drifting.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/731_FE_historia.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/741_TS_training_strategy.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/751_HT_lightgbm.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/771_ZZ_final_semillerio.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/771_ZZ_final_semillerio_2.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/771_ZZ_final_semillerio.r_3")

# Segundo experimento (sin canaritos asesinos)
source("~/labo2023r/src/Workflow_semillerio_entrega_final/sin_canaritos_asesinos/731_FE_historia.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/sin_canaritos_asesinos/741_TS_training_strategy.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/sin_canaritos_asesinos/751_HT_lightgbm.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/sin_canaritos_asesinos/771_ZZ_final_semillerio.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/sin_canaritos_asesinos/771_ZZ_final_semillerio_2.r")

# Tercer experimento (con canaritos pero cambio FE a la prueba 06 exp A problema 04)
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/731_FE_historia.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/741_TS_training_strategy.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/751_HT_lightgbm.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/771_ZZ_final_semillerio.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/771_ZZ_final_semillerio_2.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_06/771_ZZ_final_semillerio_3.r")

# Cuarto experimento (con canaritos pero cambio FE a la prueba 07 exp A problema 04)
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_07/731_FE_historia.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_07/741_TS_training_strategy.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_07/751_HT_lightgbm.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_07/771_ZZ_final_semillerio_2.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_07/771_ZZ_final_semillerio_3.r")

# Quinto experimento (con canaritos pero cambio FE a la prueba 09 exp A problema 04)
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_09/731_FE_historia.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_09/741_TS_training_strategy.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_09/751_HT_lightgbm.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_09/771_ZZ_final_semillerio_2.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/cambio_FE_a_prueba_09/771_ZZ_final_semillerio_3.r")

# Sexto experimento (con canaritos pero cambio FE a la prueba 09 exp A problema 04)
source("~/labo2023r/src/Workflow_semillerio_entrega_final/extra_semillerio_sobre_ZZ6610/731_FE_historia.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/extra_semillerio_sobre_ZZ6610/741_TS_training_strategy.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/extra_semillerio_sobre_ZZ6610/751_HT_lightgbm.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/extra_semillerio_sobre_ZZ6610/771_ZZ_final_semillerio.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/extra_semillerio_sobre_ZZ6610/771_ZZ_final_semillerio_2.r")
source("~/labo2023r/src/Workflow_semillerio_entrega_final/extra_semillerio_sobre_ZZ6610/771_ZZ_final_semillerio_3.r")

# Paso final Hibridación
source("~/labo2023r/src/Workflow_semillerio_entrega_final/envio_seleccionado_en_kaggle/781_ZZ_semillerios_hibridacion_2.r")





