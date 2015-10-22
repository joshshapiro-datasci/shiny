sedentaryCoef <- 1.2
womanShiftCoef <- -166

shinyServer(
  function(input, output) {
    output$out_result <- renderPrint({
      round(sedentaryCoef * (10*input$id_weight + 6.25*input$id_height - 5*input$id_age + womanShiftCoef                
                             *as.numeric(input$id_sex) + 5))
    })
  }
)