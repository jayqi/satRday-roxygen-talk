#' @name translate_to_pokemon
#' @title Translate text to Pokemon speech
#' @description Given a sentence of text, translate it to a particular Pokemon's
#'    speech.
#' @param sentence (character string) text to translate
#' @return Translated string
NULL

# Function factory for Pokemon translation functions
# replacement_tokens is a character vector of tokens to replace words with
.translate_to_pokemon <- function(replacement_tokens) {
    out_function <- function(sentence){
        # Split sentence into tokens
        sentence <- tolower(sentence)
        tokens <- unlist(stringr::str_split(sentence,
                                            stringr::boundary(type = "word")
                                            ))
        tokens <- sort(unique(tokens))

        # Get integer hash of each token
        hashes <- vapply(
            tokens,
            FUN = function(t) {sum(as.numeric(charToRaw(t)))},
            FUN.VALUE = numeric(1)
        )

        # Replace words in sentence
        for (t in tokens) {
            sentence <- gsub(
                paste0("\\b",t, "\\b"),
                replacement_tokens[[hashes[[t]] %% length(replacement_tokens) + 1]],
                sentence,
            )
        }

        # Convert to sentence case
        sentence <- stringr::str_to_sentence(sentence)

        return(sentence)
    }

    return(out_function)
}

#' @rdname translate_to_pokemon
#' @examples
#' translate_to_pikachu("I want to be the very best,")
#' @export
translate_to_pikachu <- .translate_to_pokemon(c('pi', 'pika', 'pikachu', 'chu'))

#' @rdname translate_to_pokemon
#' @examples
#' translate_to_squirtle("Like no one ever was.")
#' @export
translate_to_squirtle <- .translate_to_pokemon(c('squirt', 'squirtle'))

