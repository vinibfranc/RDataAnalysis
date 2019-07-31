library(shiny)

# tags$a(href="http://www.git.com", "Git")
# <a href="http://www.git.com">Git</a>

# h1, h2, h3, h4, h5, h6, a, strong, em, code, img, br, hr, p
# tags$img(height=100, width=100, src="bigorb.png") # insert image inside www

ui <- fluidPage(
  tags$h1("Shiny App"),
  tags$p(style="font-family:Impact", "See other apps in the",
         tags$a("Shiny Showcase", href="https://www.rstudio.com/products/shiny/shiny-user-showcase/") 
  )
)

server <- function(input, output) {}

shinyApp(ui=ui, server=server)