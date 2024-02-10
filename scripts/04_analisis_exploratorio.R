
# Investigamos los pesos de los pinguinos vs otras variables --------------

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm)) +
  geom_point()

datos_pinguinos_limpios %>% # tiene sentido?
  ggplot(mapping = aes(x = sexo, y = mass_kg)) +
  geom_col()

datos_pinguinos_limpios %>%
  ggplot(mapping = aes(x = sexo)) +
  geom_bar() # hace un conteo

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = sexo, y = mass_kg)) +
  geom_boxplot() # outliers, percentiles y promedios

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = isla, y = mass_kg)) +
  geom_boxplot() # peso por islas

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = tamanio_pinguinos)) +
  geom_bar() # usando datos que creamos


# Selecciono dos graficos y los arreglo un poco ---------------------------

peso_vs_aleta <- 
  datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm, color = sexo)) +
  geom_point() +
  labs(x= "Peso (kg)", y = "Largo aleta (mm)") +
  theme_bw()


# color dentro o fuera de aes() -------------------------------------------

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm, color = sexo)) +
  geom_point(color = "red") + # se ejecuta rojo porque es lo ultimo
  labs(x= "Peso (kg)", y = "Largo aleta (mm)") +
  theme_bw()

# peso vs sexo ------------------------------------------------------------

# hay geoms que usan color y otras que usan fill (1 y 2 dimensiones)

peso_vs_sexo <- 
  datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = sexo, y = mass_kg, fill = sexo)) +
  geom_boxplot(color = "blue") + # color en algunos geom es la linea
  labs(x= "Peso (kg)",
       y = "Largo aleta (mm)",
       title = "peso vs sexo",
       caption = "nota: ejercicio del taller") +
  theme_bw()