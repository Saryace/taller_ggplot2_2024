
# Usamos la funcion tibble ------------------------------------------------

tabla_perros <- 
  tibble(
    edad_mascota = c(2,4,7), # numeros <dbl> <num>
    nombres_mascotas = c("calita", "pepe", "ada"), # <chr>
    tipo = c("perro", "gato", "perro"),
    peso = c(7.0,4.5,6.8)
  )

# En R, las tablas tipo hoja de cálculo se llaman "tibbles" o "data frames".
# Esto las distingue de las matrices y arrays, que son otro tipo de tablas. 

?data_frame

# Esto significa que han sido sustituidas por nuevas funciones o que ya no están soportadas,
# y pueden ser eliminadas de futuras versiones. Todo el código que utilice las funciones
# debe convertirse para utilizar su sustituto, si existe.


# Usos de tibble e importar datos -----------------------------------------

# datos reales que debemos importar
# Construir conjuntos de datos de juguetes sencillos para solucionar problemas 

# Debugear ----------------------------------------------------------------

tibble(
  edad_mascota = c(2,4,7),
  nombres_mascotas = c("calita" "pepe", "ada"), # falta coma
  tipo = c("perro", "gato", "perro"),
  peso = c(7.0,4.5,6.8)
)

# Debugear ----------------------------------------------------------------

tibble(
  edad_mascota = c(2,4,7),
  nombres_mascotas = c("calita","pepe","ada"),
  tipo = c("perro", "gato", "perro"),
  peso = c(7.0,4.5) # deberian ser 3 valores o 2 valores + NA
)

# Debugear ----------------------------------------------------------------

tibble(
  edad_mascota = c(2,4,7),
  nombres_mascotas = c("calita","pepe", "ada"),
  tipo = c("perro", "gato", "perro"),
  peso = 10 # principio reciclaje
)

#principio reciclaje: se repite el vector de tamaño 1
ejemplo_reciclaje <- tibble(vector_a = seq(from = 1,
                                           to = 1200,
                                           by = 1),
                            vector_b = "stgo")

?seq # formas sencillas de escribir secuencias


