library(shiny)

ui <- fluidPage(
  # Input() functions,
  
  # Button (actionButton, submitButton)
  # Checkbox (checkboxInput)
  # Checkbox group (checkboxGroupInput)
  # Date (dateInput)
  # Date range (dateRangeInput)
  # File input (fileInput)
  # Numeric (numericInput)
  # Password (passwordInput)
  # Radio Buttons (radioButtons)
  # Select box (selectInput)
  # Sliders (sliderInput)
  # Text input (textInput)
  
  # Syntax
  # sliderInput(inputId="num", label="Choose a number:", specifics arguments)
  
  # Output() functions
  
  # dataTableOutput()
  # htmlOutput() 
  # plotOutput()
  # tableOutput()
  # textOutput()
  # uiOutput()
  # verbatimTextOutput()
  
  sliderInput(inputId="num", label="Choose a number", value=25, min=1, max=100),
  
  # Syntax
  # plotOutput(outputId="hist")
  
  plotOutput("hist")
)

server <- function(input, output) {
  # 3 rules
  
  # 1) output$hist <- # code
  # 2) output inside render
  # output$hist <- renderPlot({})
  # 3) access input values with input$id
  
  output$hist <- renderPlot({
    hist(rnorm(input$num))  
  })
}

shinyApp(ui = ui, server = server)