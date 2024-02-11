# Primer paso, mirar los datos --------------------------------------------

datos_pinguinos_crudos %>% #pipe
  glimpse() # echar un vistazo

datos_pinguinos_crudos %>% 
  summary() # darnos estadistica descriptiva

# Diferencia R base y tidyverse -------------------------------------------
# head nos muestra por defecto las 6 primeras filas en la consola

head(datos_pinguinos_crudos) # r base

datos_pinguinos_crudos %>% # tidyverse
  head()

# Para hacer analisis de datos necesitamos:
# Datos + preguntas

# Queremos hacer analisis por especies y sexo -----------------------------

# funcion count() cuenta por columna elegida

datos_pinguinos_crudos %>% 
  count(is.na(sex)) # hay 11 pinguinos sin categoria

# Operador (!) significa lo opuesto

datos_pinguinos_crudos %>% 
  count(!is.na(sex)) # vamos a contar los NO NA´s

# Usemos count en otro contexto: sin is.na() y en diferentes islas

datos_pinguinos_crudos %>% 
  count(sex) # contamos los machos, hembras y NA´s del dataset
 
datos_pinguinos_crudos %>% 
  count(sex, island) # contamos por sexo e isla (dos columnas)
