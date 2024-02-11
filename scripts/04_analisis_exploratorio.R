# Repaso sintaxis ---------------------------------------------------------

# Usando vectores ---------------------------------------------------------

ggplot(mapping = aes(x = datos_pinguinos_limpios$mass_kg,
                       y = datos_pinguinos_limpios$flipper_length_mm)) +
geom_point()

# Usando argumento data ---------------------------------------------------

ggplot(data = datos_pinguinos_limpios,
  mapping = aes(x = mass_kg, y = flipper_length_mm)) +
  geom_point()

# Tercera forma, tidyverse ------------------------------------------------

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm)) +
  geom_point()

# Investigamos los pesos de los pinguinos vs otras variables --------------

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm)) +
  geom_point()

# Cada geom es distinto y tiene diferentes argumentos

datos_pinguinos_limpios %>%
  ggplot(mapping = aes(x = sex, y = mass_kg)) +
  geom_bar() # veamos el error

datos_pinguinos_limpios %>%
  ggplot(mapping = aes(x = sex)) +
  geom_bar() # hace un conteo


# comparemos geom_col vs geom_bar -----------------------------------------

datos_pinguinos_limpios %>% # tiene sentido?
  ggplot(mapping = aes(x = sex, y = mass_kg)) +
  geom_col()

?geom_col

# Quizas es mas util geom_boxplot -----------------------------------------

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = sex, y = mass_kg)) +
  geom_boxplot() # outliers, percentiles y promedios

?geom_boxplot

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = island, y = mass_kg)) +
  geom_boxplot() # peso por islas

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = tamanio_pinguinos)) +
  geom_bar() # usando datos que creamos

# Selecciono dos graficos y los arreglo un poco ---------------------------
# los ggplots pueden guardarse como objeto

peso_vs_aleta <- 
  datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm, color = sex)) +
  geom_point() +
  labs(x= "Peso (kg)", y = "Largo aleta (mm)") +
  theme_bw()

# como guardo mi plot? ----------------------------------------------------

ggsave("figuras/plot_peso_vs_aleta.png", #directorio
       peso_vs_aleta) #objeto

# color dentro o fuera de aes() -------------------------------------------

datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = mass_kg, y = flipper_length_mm, color = sex)) +
  geom_point(color = "red") + # se ejecuta rojo porque es lo ultimo
  labs(x= "Peso (kg)", y = "Largo aleta (mm)") +
  theme_bw()

# peso vs sexo ------------------------------------------------------------

# hay geoms que usan color y otras que usan color y fill (1 y 2 dimensiones)

peso_vs_sexo <- 
  datos_pinguinos_limpios %>% 
  ggplot(mapping = aes(x = sex, y = mass_kg, fill = sex)) +
  geom_boxplot(color = "blue") + # color en algunos geom es la linea
  labs(x= "Peso (kg)",
       y = "Largo aleta (mm)",
       title = "peso vs sexo",
       caption = "nota: ejercicio del taller") +
  theme_bw()