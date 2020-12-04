#library(datasets)
options(scipen=999)
#global Variable
MyData <<- read.csv("TestData.csv", stringsAsFactors = FALSE)
fluidPage(    
  titlePanel("Patients by region"),
  sidebarLayout(      
    sidebarPanel(
      selectInput("type", "Graph:",
                 choice=c("Bar","Line","Regression Line")),
      selectInput("region", "Region:", 
                  choices=unique(MyData$Country)),
      hr(),
      helpText("What number of patients are there in the country above")
    ),
    mainPanel(
      plotOutput("patientsPlot")  
    )
    
  )
)
