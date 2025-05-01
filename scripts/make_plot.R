make_plot <- function(data, config) {
  # Move all aesthetics to the main ggplot call
  p <- ggplot2::ggplot(data, ggplot2::aes(x = bill_len, y = bill_dep, color = species)) +
    ggplot2::geom_point() +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = "Penguin Bill Dimensions",
      x = "Bill Length (mm)",
      y = "Bill Depth (mm)",
      color = "Species"
    )
  
  # Create output directory if it doesn't exist
  if (!dir.exists(config$output_dir)) {
    dir.create(config$output_dir, recursive = TRUE)
  }
  
  output_path <- file.path(config$output_dir, config$plot_filename)
  ggplot2::ggsave(
    filename = output_path,
    plot = p,
    width = config$figure_width,
    height = config$figure_height
  )
  
  return(output_path)
}