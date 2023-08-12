
inmuebles <- read.csv("https://infra.datos.gob.ar/catalog/otros/dataset/6/distribution/6.1/download/inmuebles-estado-nacional.csv")


install.packages("janitor")
library(tidyverse)
library(janitor)

b_curso <- tibble::tibble(Apellido.y.Nombre = c("Fasola, Juan Pedro","Soze, Kayser","Bigpear, John Sunday","Tower, JC"),
                          Profesión = c("Amigo", "Narcotraficanet", "General", "Sociólogo"),
                          Lugar.de.Nacimiento = c("Hurlingam", "Los Angeles", "Lobos", "Bahía Blanca"))

b_curso_limpia <- b_curso %>% clean_names()


#probando TIDYR

inmuebles_2 <- inmuebles %>% 
  select(codigo_del_inmueble, pais, provincia, superficie_aproximada_m2)

inmuebles_2 %>% 
  pivot_longer()

