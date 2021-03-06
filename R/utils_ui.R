


widget_div_wrapper <- function(wid){
  tags$div(class = "widget-div", wid)
}

#' @export
widgets <- function(...){
  ll <- list(...)
  lapply(ll, widget_div_wrapper)
}

#' @export
tab_map <- function(title = "Map", outputFunction = leaflet::leafletOutput, id = "map"){
  tabPanel(title,
           outputFunction(id,
                          height="90vh",
                          width="80vw"))
}

#' @export
tab_gen <- function(title = "Data download", outputFunction = downloadButton, id = "DL_data"){
  tabPanel(title,
           outputFunction(id))
}


## dashboard functions

#' @export
dash_title <- function(title = "Analyse de raréfaction"){
  fillRow(
    flex = c(3,1,1),
    fillCol(
      tags$div(
        class = "left-header",
        tags$div(class = "logo", 
                 tags$img(src = "www/coleo_test_small.png",
                          height = "60px")),
        tags$div(class = "dash-title", title)
      ),
      hover = "Coléo"),
    height = "100px",
    class= "top-header")
}

#' @export
dash_tabs <- function(...){
  fillCol(id="main",
          tabsetPanel(type = "tabs", ...))
}

#' @export
dash_sidebar <- function(badge,bottom, ...){
  fillCol(id = "sidebar",
          tags$div(
            tags$div(
              id = "closebtn-div",
              tags$a(href = "javascript:void(0)",
                     id = "closebtn",'<')),
            badge,
            widgets(...),
            bottom
          ))
}

#' @export
tableau_de_bord <- function(titre = dash_title(), 
         sidebar = dash_sidebar(
           badge = badge(),
           sliderInput("obs",
                       "Nombre d'observations:",
                       min = 0,
                       max = 1000,
                       value = 500),
           textInput("name", "What's your name?")
         ), 
         tabs = dash_tabs(tab_bigvis(),
                          tab_gen())){
  fillPage(
    titre,
    fillRow(
      id = "main-row",
      flex = c(2,8),
      sidebar,
      tabs)
  )
}


#' @export
badge <- function(badge = TRUE,
                  text_badge = "Ce tableau de bord vise à tester les modèles de tableau de bord."){
  if (badge)  {tags$div(class = "blue-badge", text_badge)}
  # test if badge = FALSE or text is NULL
}
  
