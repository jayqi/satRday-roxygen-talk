# "Level Up Your Package's Roxygen Documentation" Talk

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) 

This repository contains the materials for "Level Up Your Package's Roxygen Documentation," a lightning talk at the [satRday Chicago 2019](https://chicago2019.satrdays.org) conference. 

> The [roxygen2](https://cran.r-project.org/package=roxygen2) package is the standard for writing documentation for R packages. While the basics are intuitive enough to copy from seeing anybody else’s package, roxygen2 has some advanced tricks that aren’t so obvious. This lightning talk will show some of those tricks, including dummy articles, section and parameter inheritance, and package articles.

Presentation: 

- [Original Google Slides](https://docs.google.com/presentation/d/13EZXJNnMGhYEzfYvjStb8RG4PYWIfdorCNUcD2Yz5tk/edit?usp=sharing)
- [PDF version](https://raw.githubusercontent.com/jayqi/satRday-roxygen-talk/master/slides.pdf)

## Demo Package `pokemon`

The source for the examples from the talk are available in the demo package `pokemon`. To install:
```R
remotes::install_github("https://github.com/jayqi/satRday-roxygen-talk", subdir = "pokemon")
```

Then use the `library` function to load the package:
```R
library(pokemon)
```

## Source and Documentation Commands for Examples

- Generic Function Example
  - Source: [R/parameter_inheritance.R](https://github.com/jayqi/satRday-roxygen-talk/blob/master/pokemon/R/parameter_inheritance.R)
  - RStudio doc shortcut: `?get_pokemon_by_number`
- Package Article
  - Source: [R/package_article.R](https://github.com/jayqi/satRday-roxygen-talk/blob/master/pokemon/R/package_article.R)
  - RStudio doc shortcut: `?pokemon` or `?pokemon-package`
- Null Objects and `@rdname`
  - Source: [R/null_object_and_rdname.R](https://github.com/jayqi/satRday-roxygen-talk/blob/master/pokemon/R/null_object_and_rdname.R)
  - RStudio doc shortcut: `?translate_to_pokemon`, `?translate_to_pikachu`, `?translate_to_squirtle`
- Parameter Inheritance
  - Source: [R/parameter_inheritance.R](https://github.com/jayqi/satRday-roxygen-talk/blob/master/pokemon/R/parameter_inheritance.R)
  - RStudio doc shortcut: `?whos_that_pokemon`
- Section Inheritance
  - Source: [R/section_inheritance.R](https://github.com/jayqi/satRday-roxygen-talk/blob/master/pokemon/R/section_inheritance.R)
  - RStudio doc shortcut: `?Wartortle`

<sup>Disclaimer: The author of this repository claims no ownership over Pokémon or related characters. Pokémon and all related characters are trademarks of Nintendo. The presentation and demo package uses Pokémon under fair use, and all materials should only be used for personal, noncommercial purposes.</sup>
