# library(shiny)
# runExample("10_download")

shinyUI(pageWithSidebar(
  headerPanel('Download Example'),
  sidebarPanel(
    selectInput("dataset", "Choose a dataset:", 
                choices = c("rock", "pressure", "cars")),
    downloadButton('downloadData', 'Download')
  ),
  mainPanel(
    tableOutput('table')
  )
))