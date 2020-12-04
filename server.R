function(input, output) {
  
  
  output$patientsPlot <- renderPlot({
    
    #MyData<- read.csv("TestData.csv", stringsAsFactors = FALSE)
    if(input$type=="Bar") 
    {barplot(MyData[ which(MyData$Country == input$region), 3 ],
             names=MyData[ which(MyData$Country == input$region), 2 ],
             col=c("black"),
             main=input$region,
             ylab="Number of Patients",
             xlab="Year")
    } else if (input$type=="Line"){
      plot(MyData[ which(MyData$Country == input$region), 2 ],
           MyData[ which(MyData$Country == input$region), 3 ],
           type="l",
           col=c("black"),
           main=input$region,
           ylab="Number of Patients",
           xlab="Year")
    } else{  
      plot(MyData[which(MyData$Country == input$region), 2 ],
           MyData[ which(MyData$Country == input$region), 3 ],
           col=c("blue"),
           main=input$region,
           ylab="Number of Patients",
           xlab="Year")
      abline(lm( MyData[ which(MyData$Country == input$region), 3 ] ~ MyData[ which(MyData$Country == input$region), 2 ], data = MyData), col = "red"
      )
    }
  })
} 