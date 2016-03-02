#Loads the necessary libraries
library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Flowers"),
  
  # Sidebar Panel
  sidebarLayout(
    sidebarPanel(
       #Allows user to select which flower data they want to see displayed. Can also view all of it
       #"all" is selected by default
       selectInput("flower", label = h3("Pick Flower to Display"),
                    choices = list("Versicolor" = 'versicolor', "Virginica" = 'virginica', "Setosa" = 'setosa', "All" = 'all'),
                   selected = 'all'),
       #Radio Button to choose X-Axis data
       #"Petal.Length" selected by default
       radioButtons("xvar", label = h3("X Variable"),
                    choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'),
                    selected = 'Petal.Length'),
       #Radio Button to choose Y-Axis data
       #"Sepal.Length selected by default
       radioButtons("yvar", label = h3("Y Variable"),
                    choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'),
                   selected = 'Sepal.Length'
                   )
    ),
    
    # Outputs the plotly of the iris data
    mainPanel(
       plotlyOutput("irisPlot")
    )
  )
))
