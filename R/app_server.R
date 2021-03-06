#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
  # mod_map_select_server("map_select_ui_1")
  output$map <- leaflet::renderLeaflet(make_leaflet_map())
  mod_modal_make_server("modal_make_ui_1", region = reactive(input$map_shape_click$id))
}
