#' @name Squirtle
#' @title Squirtle Class
#' @description R6 class for a Squirtle.
#' @section Class Constructor:
#' \preformatted{Squirtle$new()}
#' @section Public Methods:
#' \describe{
#'     \item{\bold{\code{bubble}}}{: A spray of countless bubbles is jetted at
#'        the opposing Pokemon.
#'     }
#' }
NULL

#' @export
Squirtle <- R6::R6Class(
    public = list(
        tackle = function() {.use_move("BUBBLE")}
    ),
    private = list(
        name = "SQUIRTLE",
        use_move = function(move_name) {
            cat(sprintf(
                "%s used %s!\n",
                toupper(private$name),
                toupper(move_name)
            ))
        }
    )
)

#' @name Wartortle
#' @title Wartortle Class
#' @description R6 class for a Wartortle.
#' @section Class Constructor:
#' \preformatted{Wartortle$new()}
#' @section Public Methods:
#' \describe{
#'     \item{\bold{\code{water_gun}}}{: The target is blasted with a forceful
#'         shot of water.
#'     }
#' }
#' @inheritSection Squirtle Public Methods
NULL

#' @export
Wartortle <- R6::R6Class(
    inherit = Squirtle,
    public = list(
        water_gun = function() {.use_move(private$name, "WATER GUN")}
    ),
    private = list(
        name = "WARTORTLE"
    )
)

#' @name Blastoise
#' @title Blastoise Class
#' @description R6 class for a Blastoise.
#' @section Class Constructor:
#' \preformatted{Blastoise$new()}
#' @section Public Methods:
#' \describe{
#'     \item{\bold{\code{hydro_pump}}}{: The target is blasted by a huge volume
#'         of water launched under great pressure.
#'     }
#' }
#' @inheritSection Wartortle Public Methods
#' @inheritSection Squirtle Public Methods
NULL

#' @export
Blastoise <- R6::R6Class(
    inherit = Wartortle,
    public = list(
        hydro_pump = function() {.use_move(private$name, "HYDRO PUMP")}
    ),
    private = list(
        name = "Blastoise"
    )
)
