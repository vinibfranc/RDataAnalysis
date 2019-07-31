library(shiny)

# Layout functions

ui <- fluidPage(
  fluidRow(
    column(3, offset=1),
    column(5, sliderInput("slider", value=25, min=1, max=100, label="Slider")), # <div class="col-sm-2"></div>
  ),
  fluidRow(
     column(4, offset=8, 
       plotOutput(hist("hist"))
     )
  )
)

server <- function(input, output) {}

shinyApp(ui=ui, server=server)
# = <div class="row"></div>