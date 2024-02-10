# Primer paso, mirar los datos --------------------------------------------

datos_pinguinos_raw %>% #pipe
  glimpse() # echar un vistazo

datos_pinguinos_raw %>% 
  summary() # darnos estadistica descriptiva

head(datos_pinguinos_raw) # r base

datos_pinguinos_raw %>% # tidyverse
  head()

# Queremos hacer analisis por especies y sexo -----------------------------

# Operador (!) significa lo opuesto

datos_pinguinos_crudos %>% 
  count(is.na(sex)) # vamos a contar los NA de sexo

datos_pinguinos_crudos %>% 
  count(!is.na(sex)) # vamos a contar los NO NA´s

# Usemos count en otro contexto: sin is.na() y en diferentes islas

datos_pinguinos_crudos %>% 
  count(sex) # contamos los machos, hembras y NA´s del dataset

datos_pinguinos_crudos %>% 
  count(sex, island) # contamos por sexo e isla (dos columnas)
