#'Remove a ggplot Component
#'
#' @description Remove a specific component from a ggplot.
#'
#'@param object character string specifying the plot components. Allowed values
#'  include: \itemize{
#'  \item \code{"grid"} for both x and y grids
#'  \item \code{"x.grid"} for x axis grids
#'  \item \code{"y.grid"} for y axis grids
#'  \item \code{"axis"} for both x and y axes
#'  \item \code{"x.axis"} for x axis
#'  \item \code{"y.axis"} for y axis
#'
#'  \item \code{"xlab", or "x.title"}
#'  for x axis label
#'  \item \code{"ylab", or "y.title"} for y axis label
#'  \item \code{"xylab", "xy.title" or "axis.title"} for both x and y axis
#'  labels
#'  \item \code{"x.text"} for x axis texts (x axis tick labels)
#'  \item \code{"y.text"} for y axis texts (y axis tick labels)
#'  \item \code{"xy.text"} or \code{"axis.text"} for both x and y axis texts
#'
#'  \item \code{"ticks"} for both x and y ticks
#'  \item \code{"x.ticks"} for x ticks
#'  \item \code{"y.ticks"} for y ticks
#'
#'  \item \code{"legend.title"} for the legend title
#'  \item \code{"legend"} for the legend
#'  }
#'
#'@examples
#'# Load data
#'data("ToothGrowth")
#'
#'# Basic plot
#'p <- ggboxplot(ToothGrowth, x = "dose", y = "len",
#'   ggtheme = theme_gray())
#'p
#'
#'# Remove all grids
#' p + rremove("grid")
#'
#' # Remove only x grids
#' p + rremove("x.grid")
#'@export
rremove <- function(object){

  blank <- element_blank()

  switch(object,

         grid = theme(panel.grid.minor = blank, panel.grid.major = blank),
         x.grid = theme(panel.grid.minor.x = blank, panel.grid.major.x = blank),
         y.grid = theme(panel.grid.minor.y = blank, panel.grid.major.y = blank),

         axis = theme(axis.line = blank),
         x.axis = theme(axis.line.x = blank),
         y.axis = theme(axis.line.y = blank),

         xlab = theme(axis.title.x = blank),
         x.title = theme(axis.title.x = blank),
         ylab = theme(axis.title.y = blank),
         y.title = theme(axis.title.y = blank),
         xy.title = theme(axis.title.x = blank, axis.title.y = blank),
         xylab = theme(axis.title.x = blank, axis.title.y = blank),
         axis.title = theme(axis.title.x = blank, axis.title.y = blank),

         x.ticks = theme(axis.ticks.x = blank),
         y.ticks = theme(axis.ticks.y = blank),
         ticks = theme(axis.ticks.x = blank, axis.ticks.y = blank),

         x.text = theme(axis.text.x = blank),
         y.text = theme(axis.text.y = blank),
         xy.text = theme(axis.text.x = blank, axis.text.y = blank),
         axis.text = theme(axis.text.x = blank, axis.text.y = blank),

         legend.title = theme(legend.title = blank),
         legend = theme(legend.position = "none"),

         stop("Don't support ", object)
         )

}
