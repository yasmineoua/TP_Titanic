#creation package

setwd("/Users/MAC/Downloads/TP_Titanic")
devtools::create("TitanicPackage")
#' Taux de survie selon la classe
#'
#' Cette fonction calcule le taux de survie pour chaque classe de passagers.
#'
#' @param data Un dataframe contenant les données du Titanic (TitanicSurvival).
#' @return Un dataframe avec le taux de survie par classe.
#' @export
taux_survie_classe <- function(data) {
  data %>%
    group_by(Pclass) %>%
    summarise(taux_survie = mean(Survived, na.rm = TRUE))
}
#' Taux de survie selon le sexe
#'
#' Cette fonction calcule le taux de survie pour chaque sexe des passagers.
#'
#' @param data Un dataframe contenant les données du Titanic (TitanicSurvival).
#' @return Un dataframe avec le taux de survie par sexe.
#' @export
taux_survie_sexe <- function(data) {
  data %>%
    group_by(Sex) %>%
    summarise(taux_survie = mean(Survived, na.rm = TRUE))
}
devtools::document()
library(TitanicPackage)
taux_survie_classe(TitanicSurvival)
taux_survie_sexe(TitanicSurvival)
```{r}
library(TitanicPackage)
# Charger les données TitanicSurvival
data(TitanicSurvival)

# Utiliser la fonction pour calculer le taux de survie selon la classe
taux_classe <- taux_survie_classe(TitanicSurvival)
print(taux_classe)

# Utiliser la fonction pour calculer le taux de survie selon le sexe
taux_sexe <- taux_survie_sexe(TitanicSurvival)
print(taux_sexe)
git add .
git commit -m "Ajout des fonctions d'analyse dans le package TitanicPackage et mise à jour du rapport"
git push

