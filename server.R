#Loads the necessary libraries
library(plotly)
library(shiny)
library(dplyr)
#Loads function(s) from this file
source("build_scatter.R")
#Get data from the Iris data set
data <- data.frame(iris)
# Define server logic required to draw a Scatter Plot
shinyServer(function(input, output) {
  #Renders a plot
  output$irisPlot <- renderPlotly({
    #Builds a scatter plot using function from build_scatter.R
    build_scatter(data, input$xvar, input$yvar, input$flower)
  })
})
