## Author: Pallav Mishra

shinyUI(
  pageWithSidebar(
    headerPanel("Car Road Tests Trend, 1974"),
    sidebarPanel(
      h4("Data from Motor Cars data available in the R dataset: mtcars"),
      h3("Enter the data"),
      # Add Sliders to input cylinder and horsepower information
      sliderInput('cyl', 'Number of Cylinders: ', 4, min = 4, max = 8, step = 2), 
      sliderInput('horse', 'Horse Power input: ', 100, min = 70, max = 250, step = 10),
      # Add a submit button to take reactive inputs
      submitButton("Submit")
    ),
    mainPanel(
      h4("Mean Mileage per Gallon"),
      verbatimTextOutput("mpgId")
    )
  ))