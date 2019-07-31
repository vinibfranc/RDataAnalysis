library(shiny)

# Make non-reactive object
# isolate({ rnorm(input$num)  })

ui <- fluidPage(
  sliderInput(inputId="num", label="Choose a number", value=25, min=1, max=100),
  textInput(inputId="title", label="Write a text", value="Histogram of random normal values"),
  plotOutput("hist")
)

server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), 
         main=isolate({input$title}))  
  })
}

shinyApp(ui=ui, server=server)