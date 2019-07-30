library(shiny)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    # Take a dependency on input$goButton
    if (input$goButton == 0)
      return()
    
    # Use isolate() to avoid dependency on input$obs
    dist <- isolate(rnorm(input$obs))
    hist(dist)
  })
})