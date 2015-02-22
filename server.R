# server.R

library(quantmod)
library(forecast)

#reactive
shinyServer(function(input, output) {
  
  dataInput <- reactive({  
    getSymbols(input$symb, src = "yahoo", 
               from = input$dates[1],
               to = input$dates[2],
               auto.assign = FALSE)
  })
  
  finalOutput <- reactive({
    data <- dataInput()
    wData <- to.weekly(data)
    wOpen <- Op(wData)
    ts1 <- ts(wOpen, frequency=52)
    fit <- HoltWinters(ts1)
    fCast <- forecast(fit, 20)
    fCast
  })
  
  #renderPlot
  output$plot <- renderPlot({
    plot(finalOutput(), ylab="Opening price $", xlab="year", main=paste("Forecast of ",input$symb))    
  })
})
