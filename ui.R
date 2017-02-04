
library(shiny)

fluidPage(
          verticalLayout(
                  titlePanel('Kmeans clustering of Auto MPG data from UC Irvine'),
                  plotOutput('plot1'),
          wellPanel(
                  selectInput('xcol', 'X Variable', names(cars)),
                  selectInput('ycol', 'Y Variable', names(cars),
                              selected=names(cars)[[5]]),
                  
                  numericInput('clusters', 'Cluster count', 3,
                               min = 1, max = 9))
          )
  )
