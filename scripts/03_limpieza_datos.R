datos_pinguinos_limpios <-
  datos_pinguinos_crudos %>%
  drop_na(sex) %>% # descarta la FILA con NA´s para sexo
  mutate( # creo la categoria grande y pequeño
    tamanio_pinguinos = case_when(
      body_mass_g >= 3500 ~ "BIG",
      body_mass_g < 3500 ~ "SMALL",
      .default =  NA_character_ # lo dejo en futuros casos con NA´s
    )
  ) %>%
  mutate(mass_kg = body_mass_g / 1000) %>% # mutate permite operaciones matematicas
  rename("sexo" = sex, # primero el nombre nuevo luego la variable
         "isla" = island,
         "especie" = species)