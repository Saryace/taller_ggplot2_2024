
# Uso de pivot_longer -----------------------------------------------------

datos_pinguinos_limpios %>% 
pivot_longer(
  cols = c(bill_length_mm,bill_depth_mm), # columnas a alargar
  names_to = c("bill", "medida", "unidad"), # nuevas cols
  values_to = "valor", # nombre de col con valores
  names_sep = "_" # separador
) %>%
ggplot(aes(x = island, y = valor, color = sex)) +
geom_boxplot() +
facet_wrap(vars(medida), scales = "free") + 
theme_bw() +
labs(y = "mm", x = NULL)