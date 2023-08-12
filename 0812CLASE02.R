
curso <- data.frame(nombre     = c("Juan", "Pedro", "María", "José","Enzo", "Ariel", "Eva"),
                    edad       = c(25, 32, 21,40, 30, 28, 37),
                    nacimiento = c(1993, 1986, 1997, 1978, 1988, 1990, 1981),
                    programa   = c("spss", "stata", "stata", "excel", "R", "stata", "spss"),
                    nivel      = c(3, 5,7, 6, 2, 6, 8))

library(tidyverse)

round(prop.table(table(curso$programa)) * 100, digits = 1)

curso$programa %>% 
  table() %>%
  prop.table() %>%
  round(digits = 3)*100

# TIP: TIDYVERSE funciona muy bien con data.frames, no tanto con otros tipos como xej table.
# Por ese motivo se complejizó la traduccion de la función.

#Ahora importo data.frame descargado en mi proyecto
inmuebles <- read_csv("inmuebles-estado-nacional.csv")





