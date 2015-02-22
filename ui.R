library(shiny)

shinyUI(fluidPage(
  titlePanel("Reactive Stock Visualization"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Loads data from yahoo finance."),

      selectInput("symb", 
                  label = "Choose a stock to display",
                  choices = c("GOLD","IBM", "YHOO", "SPY"),
                  selected = "GOLD"),
      
    
      dateRangeInput("dates", 
        "Date range",
        start = "2012-01-01", 
        end = as.character(Sys.Date())),
   
      actionButton("get", "Get Stock")
    ),
    
    mainPanel(plotOutput("plot"))
  )
))