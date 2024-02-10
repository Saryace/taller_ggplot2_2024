
# Datos -------------------------------------------------------------------

# para combinar datos se usa la funcion c()

mascota_1 <- "calita" # asignamos el chr "calita" al objeto mascota_1

mascota_2 <- "pepe"

mascota_3 <- "ada"

mascotas <- mascota_1 + mascota_2 + mascota_3 # error

mascotas <- c(mascota_1, mascota_2,mascota_3)

# vectores  ---------------------------------------------------------------

edad_mascotas <- c(2, 4, 8)

nombres_mascotas <- c("calita", "pepe", "ada")

# Vectores y estadistica --------------------------------------------------

# Muchas funciones en R toman un vector como entrada y devuelven
# valor que resume el vector como salida.

mean(c(20, 40, 10)) #cualquier valor

mean(edad_mascotas)

mean(2, 4, 8) # NO TIENE SENTIDO

# promedio, minimo , max 

max(edad_mascotas)

# Juguemos! ---------------------------------------------------------------

# No es real, pero se dice que cada año animal son 7 de humanos
# pista: operacion matematica

edad_humana_mascotas <- edad_mascotas * 7

# Tipos de funciones ------------------------------------------------------

# En general, las funciones de R se dividen en tres grupos:

# Funciones de resumen -  toman un vector de entrada y devuelven
# un único número.

# Funciones vectorizadas - toman un vector de entrada, trabajan en sus
# elementos en paralelo y devuelven un vector de salida.

# Otras funciones -  hacen algo especial o no están escritas
# para utilizar vectores.


# Vectores con nombre -----------------------------------------------------

edad_mascotas_named <- c(calita = 2, pepe = 4, ada = 8)

edad_mascotas_named * 7
