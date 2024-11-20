#' Calculate survival rate by passenger class
#'
#' Cette fonction calcule le taux de survie en fonction de la classe des passagers du Titanic.
#' Elle prend un jeu de données et retourne un tableau contenant les taux de survie pour chaque classe.
#'
#' @param data Un data frame contenant les informations du Titanic (doit inclure les colonnes 'passengerClass' et 'survived').
#' @return Un data frame avec les taux de survie calculés pour chaque classe de passagers.
#' @export
calculate_survival_rate_by_class <- function(data) {
  data %>%
    group_by(passengerClass) %>%
    summarize(total = n(),
              survived = sum(survived == "yes"),
              survival_rate = round(survived / total * 100, 2))
}


#' Calculate survival rate by sex
#'
#' Cette fonction calcule le taux de survie en fonction du sexe des passagers du Titanic.
#' Elle prend un jeu de données et retourne un tableau contenant les taux de survie pour chaque sexe.
#'
#' @param data Un data frame contenant les informations du Titanic (doit inclure les colonnes 'sex' et 'survived').
#' @return Un data frame avec les taux de survie calculés pour chaque sexe.
#' @export
calculate_survival_rate_by_sex <- function(data) {
  data %>%
    group_by(sex) %>%
    summarize(total = n(),
              survived = sum(survived == "yes"),
              survival_rate = round(survived / total * 100, 2))
}

