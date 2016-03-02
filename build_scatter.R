#Function makes a scatter plot. Takes in 4 paramters:
#The data to be made into a plot, the x variable, the y variable, the type of flower to be displayed
build_scatter <- function(data, xvar = 'Petal.Length', yvar = 'Sepal.Length', flower = 'all') {
  #Filters down to match the selected flower. Only filters if all is not selected
  if(flower != 'all') {
    data <- data %>% filter(Species == flower)
  }
  data %>% 
    #Makes the plotly scatterplot. Sets x and y values, size
    plot_ly(x = eval(parse(text = xvar)), 
            y = eval(parse(text = yvar)), 
            size = eval(parse(text = xvar)), 
            mode = "markers",
            color = Species) %>% 
    layout(xaxis = list(title = xvar), 
           yaxis = list(title = yvar)
    ) %>% 
    return()
}