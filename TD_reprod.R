taux_survie_sex <- function(data) {
  library(dplyr)
  return(data %>%
           group_by(sex) %>%
           summarize(TauxSurvie = sum(survived == "yes") / n()))
}

