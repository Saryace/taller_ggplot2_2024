
# Uso de pivot_longer -----------------------------------------------------

datos_pinguinos_limpios %>% 
pivot_longer(
  cols = c(bill_length_mm,bill_depth_mm),
  names_to = c("bill", "medida", "unidad"),
  values_to = "valor",
  names_sep = "_"
) %>% 
ggplot(aes(x = island, y = valor, color = sex)) +
geom_boxplot() +
facet_wrap(vars(medida), scales = "free") + 
theme_bw() +
labs(y = "mm", x = NULL)