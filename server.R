library(shiny)

tempfx <- function(x,y) {
  
  data <- mtcars
  
  temp <- data[data$cyl == x &
                data$hp <= y, ]
  out <- mean(temp$mpg)
  return (out)
}


shinyServer(
  function(input, output) {
    output$mpgId <- renderPrint(tempfx(input$cyl, input$horse))
  }
)