# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/cv-wfv/src/11A_611_CA_reparar_dataset.r")
source("~/cv-wfv/src/11A_621_DR_corregir_drifting.r")
source("~/cv-wfv/src/11A_631_FE_historia.r")
source("~/cv-wfv/src/11A_641_TS_training_strategy_CV.r")

# ultimos pasos, muy lentos
source("~/cv-wfv/src/11A_651_HT_lightgbm_CV.r")
source("~/cv-wfv/src/11A_661_ZZ_final_CV.r")
