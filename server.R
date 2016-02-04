shinyServer(
    function(input, output) {
        output$text1 <- renderText({
            as.Date(input$date2)-as.Date(input$date1)
        })
        output$text2 <-              
            renderText({as.numeric(as.Date(input$date2)-as.Date(input$date1))*24})
        output$text3 <-  
            renderText({as.numeric(as.Date(input$date2)-as.Date(input$date1))*24*60})
    }
)
