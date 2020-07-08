## Process data
library(dplyr)

## Create kb dataset
kb_experience <- read_kb_experience() %>%
  get_kb_coordinates() %>%
  create_popup_content() %>%
  filter(!is.na(lon))

usethis::use_data(kb_experience, overwrite = TRUE, compress = "xz")
