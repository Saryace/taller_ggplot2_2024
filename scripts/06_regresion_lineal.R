# Regresión lineal --------------------------------------------------------
library(ggpmisc) # extension ggplot2

# Analisis de solo hembras ------------------------------------------------

datos_pinguinos_crudos %>%
  filter(sex == "FEMALE") %>%
  drop_na() %>% 
  ggplot(aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 2) +
  stat_poly_line() +
  stat_poly_eq(use_label(c("eq", "R2"))) +
  facet_wrap(vars(species), scales = "free") +
  labs(x = "lenght (mm)",
       y = "depth (mm)") +
  scale_color_manual(values=c("violet","darkblue","gold4")) +
  theme_bw()

