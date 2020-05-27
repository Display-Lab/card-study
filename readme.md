# Card Study

## Prerequisites

- Rstudio
- Display Lab packages
  - Pictoralist
  - Spekex
- XeLatex

### Installing Display Lab Packages
Easiest way is using the devtools packages.

```R
# Install Pictoralist
devtools::install_github("Display-Lab/pictoralist")

# Install Spekex
devtools::install_github("Display-Lab/spekex")
```

### Installing Pictoralist Required Libraries
Pictoralist requires the sf package to handle shape files.  Installing the dependencies for the sf package might be more difficult than other packages.  See [the sf package page](https://r-spatial.github.io/sf/)

### Rmarkdown and requirements for creating pdfs

See: https://bookdown.org/yihui/rmarkdown/installation.html
In short, if you don't have nor care to maintain a LaTeX and pandoc installation:
```R
install.packages('rmarkdown')
install.packages('tinytex')
tinytex::install_tinytex()  # install TinyTeX
```

## Generate a card

### Using RStudio IDE
1. Open the .Rmd file associated with the card you want to generate
1. Click the "Knit" button 

### Using Command Line
For Linux or MacOS users that have Rscript on their PATH, from the project root directory run the following replacing X with the card number.

```sh
Rscript -e 'rmarkdown::render("cards/cardX.Rmd")'
```

## Generate all cards

### Using RStudio IDE
From RStudio, open the script `utils/render_all_cards.R`.  Press the `Source` button to run this file, or run it manually.

### Using Command Line
From the project root directory run the following.  

```sh
Rscript -e 'rmarkdown::render("utils/render_all_cards.R")'
```
