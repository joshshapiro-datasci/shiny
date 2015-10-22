library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calorie calculator for sedentary activity"),
  sidebarPanel(
    radioButtons("id_sex", "Sex", c("Male"=0, "Female"=1)),
    sliderInput("id_weight", "Weight, kg", value=70, min=30, max=150, step=1),
    sliderInput("id_height", "Height, cm", value=170, min=140, max=220, step=1),
    numericInput("id_age", "Age", value=30, min=15, max=80, step=1)
  ),
  mainPanel(
    #plotOutput("myHist"),
    h3("Daily caloric needs:"),
    h5("(for weight maintaining)"),
    verbatimTextOutput("out_result")
  )
))