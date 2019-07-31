# Reactive functions

# 1) Use a code chunk to build (and rebuild) an object
# 2) The object will respond to changes in a set of reactive values

# Render functions: 
# renderPlot({  hist(rnorm(input$num)) })

library(shiny)

ui <- fluidPage(
  sliderInput(inputId="num", label="Choose a number", value=25, min=1, max=100),
  textInput(inputId="title", label="Write a text", value="Histogram of random normal values"),
  plotOutput("hist")
)

server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), main=input$title)  
  })
}

shinyApp(ui=ui, server=server)