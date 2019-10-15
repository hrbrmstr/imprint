
p_palette<-c("#4e73df", "#e74a3b", "#408743", "#f6c23e", "#ff00ff", "#36b9cc", "#a57c00", "#36b9cc", "#858796")

#' Intended to be your org's main color palette, example first palette from SB Admin 2 bootstrap theme. https://github.com/BlackrockDigital/startbootstrap-sb-admin-2
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(primary_pal()(9))
primary_pal <- function() {manual_pal(p_palette)}

#' Discrete color & fill scales based on your organization's primary palette.
#'
#' See [primary_pal]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_primary
#' @export
scale_colour_primary <- function(...) {discrete_scale("colour", "primary", primary_pal(), ...)}

#' @export
#' @rdname scale_primary
scale_color_primary <- scale_colour_primary

#' @export
#' @rdname scale_primary
scale_fill_primary <- function(...) {discrete_scale("fill", "primary", primary_pal(), ...)}