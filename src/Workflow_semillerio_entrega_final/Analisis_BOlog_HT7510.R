library(readr)
BO_log_HT7510 <- read_delim("src/Workflow_semillerio_entrega_final/BO_log_HT7510.txt", 
                            delim = "\t", escape_double = FALSE, 
                            trim_ws = TRUE)
View(BO_log_HT7510)

