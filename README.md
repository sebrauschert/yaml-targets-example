# Reproducible R Project: Penguin Plotting with `targets`

This project demonstrates a simple, fully reproducible R workflow using:

- `targets` for pipeline management
- `yaml` for centralized config
- Clean project structure
- Version-controlled raw data

### Project Structure

```
penguins-project/
  ├── data/                  # Contains the penguins.csv
  ├── results/               # Auto-generated figures and outputs
  ├── scripts/               # All analysis logic
  ├── config.yaml            # Parameters and paths
  ├── _targets.R             # targets pipeline
  ├── README.md
```

### Run the Pipeline

```r
# Install required packages if needed:
install.packages("renv")
renv::restore()

# Run the pipeline
targets::tar_make()
```

The pipeline will read the dataset, clean it, and save a figure to results/penguin_plot.png.

Notes
All paths are stored in config.yaml to avoid hardcoding.
targets ensures the workflow is reproducible and cached.
Raw data is treated as a stable input.
