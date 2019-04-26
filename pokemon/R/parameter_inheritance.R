#' @title Pokedex Number Lookup
#' @description Given a Pokedex number, get name of corresponding Pokemon.
#' @param pokedex_number (whole number) Pokedex number of Pokemon to look up.
#' @return Name of Pokemon as string
#' @export
get_pokemon_by_number <- function(pokedex_number) {
    # Validation
    assertthat::assert_that(
        assertthat::is.count(pokedex_number),
        length(pokedex_number) == 1,
        pokedex_number <= 151
    )
    # Lookup
    pokemon_name <- pokemon::pokedex[
        pokemon::pokedex$pokedex_number == pokedex_number,
        "name"
    ]
    return(pokemon_name)
}

#' @title Who's that Pokemon?
#' @description "Who's that Pokemon?" by Pokedex number.
#' @inheritParams get_pokemon_by_number
#' @param print_result (logical) whether to print result with \code{cat}
#' @return string
#' @export
whos_that_pokemon <- function(pokedex_number, print_result = TRUE) {
    pokemon_name <- get_pokemon_by_number(pokedex_number)
    result <- sprintf("Who's that Pokemon?\nIt's %s!\n", pokemon_name)
    if (print_result) {
        cat(result)
        return(invisible(result))
    }
    return(result)
}
