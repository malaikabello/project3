library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # Generate bins based on input$bins from ui.R
    # Expression that generates a histogram. The expression is
    # wrapped in a call to renderPlot to indicate that:
    #
    #  1) It is "reactive" and therefore should be automatically
    #     re-executed when inputs change
    #  2) Its output type is a plot
    
    
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'blue', border = 'red')
    
  })
  
})
