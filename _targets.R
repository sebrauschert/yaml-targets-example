library(targets)
library(yaml)
library(ggplot2)
tar_option_set(packages = c("ggplot2", "yaml", "readr"))

# Source scripts
lapply(list.files("scripts", full.names = TRUE), source)

# Load config
config <- yaml::read_yaml("config.yaml")

list(
  tar_target(raw_data, load_data(as.character(config$input_data))),
  tar_target(plot_file, make_plot(raw_data, config))
)