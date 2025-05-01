load_data <- function(path) {
  path <- as.character(path)
  readr::read_csv(path) |> na.omit()
}