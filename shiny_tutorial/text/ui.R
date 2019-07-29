library(shiny)
# runExample("02_text")

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Shiny Text"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  
  sidebarPanel(
    selectInput("dataset", "Choose a dataset: ", 
                choices=c("rock", "pressure", "cars")),
    
    numericInput("obs", "Number of observations to view: ", 10)
  ),
  
  mainPanel(
    verbatimTextOutput("summary"),
    
    tableOutput("view")
  )
))