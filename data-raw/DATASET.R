## code to prepare `DATASET` dataset goes here

ISeD_2019_2020 <- readr::read_csv("../../../Descargas/ISeD_2019-2020 csv/Resultados ISeD.csv")
usethis::use_data(ISeD_2019_2020, overwrite = TRUE)


Diccionario_ISeD_2019_2020 <- readr::read_csv("../../../Descargas/ISeD_2019-2020 csv/Diccionario de datos - ISeD .csv")
usethis::use_data(Diccionario_ISeD_2019_2020, overwrite = TRUE)

MSD_2013_2018 <- read("../../../Descargas/prog_valoracion_del_desempeno.csv")
usethis::use_data(MSD_2013_2018, overwrite = TRUE)

Diccionario_MSD <- readxl::read_xlsx("../../../Descargas/diccionario_msd.xlsx")
Diccionario_MSD_names <- as.vector(Diccionario_MSD[4,c(1,2)])
Diccionario_MSD <- Diccionario_MSD[-c(1,2,3,4),]
colnames(Diccionario_MSD) <- c(Diccionario_MSD_names$`1.Título del documento`,
                               Diccionario_MSD_names$`Modelo Sintético de Información de Desempeño`)
usethis::use_data(Diccionario_MSD, overwrite = TRUE)

# Avance de indicadores 2013-2020

Avance_indicadores_2013_2020 <- readr::read_csv("../../../Descargas/prog_avance_de_indicadores.csv")
usethis::use_data(Avance_indicadores_2013_2020, overwrite = TRUE)


# Poblaciones objetivo de los programas

cobertura_poblacional_2017 <- readxl::read_xlsx("../../../Descargas/prog_poblaciones_rop_2015-2020/Poblaciones 2017/Poblaciones_potencial_objetivo_atendida_2017.xlsx")
usethis::use_data(cobertura_poblacional_2017, overwrite = TRUE)

cobertura_poblacional_2018 <- readxl::read_xlsx("../../../Descargas/prog_poblaciones_rop_2015-2020/Poblaciones 2018/Poblaciones_Potencial_Objetivo_Atendida_2018.xlsx")
cobertura_poblacional_2018 <- cobertura_poblacional_2018[-c(2,3,4), ]
colnames(cobertura_poblacional_2018) <- cobertura_poblacional_2018[1,]
cobertura_poblacional_2018 <- cobertura_poblacional_2018[-1,]
usethis::use_data(cobertura_poblacional_2018, overwrite = TRUE)


cobertura_poblacional_2019 <- readxl::read_xlsx("../../../Descargas/prog_poblaciones_rop_2015-2020/Poblaciones 2019/Poblaciones_Potencial_Objetivo_2019.xlsx")
cobertura_poblacional_2019 <- cobertura_poblacional_2019[-c(2,3,4), ]
colnames(cobertura_poblacional_2019) <- cobertura_poblacional_2019[1,]
cobertura_poblacional_2019 <- cobertura_poblacional_2019[-1,]
usethis::use_data(cobertura_poblacional_2019, overwrite = TRUE)

cobertura_poblacional_2020 <- readxl::read_xlsx("../../../Descargas/prog_poblaciones_rop_2015-2020/Poblaciones 2020/Poblaciones_de_programas_de_desarrollo_social_2020.xlsx")
colnames(cobertura_poblacional_2020) <- cobertura_poblacional_2020[1,]
cobertura_poblacional_2020 <- cobertura_poblacional_2020[-1,]
usethis::use_data(cobertura_poblacional_2020, overwrite = TRUE)
