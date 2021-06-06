###################################
# Scatter plot with groups
###################################

setwd("C:\\Users\\MudasirHayat\\Desktop\\University Documents\\SEMESTER6\\DataScience")
library(ggplot2)


############# Function to Read Data Frame #################
readData <- function(){
  myD <- mtcars 
  print(head(myD))
  return(myD)
}

createScatter <- function(myData){
  
  
   myPlot <- ggplot(myData, aes(x = myData$wt, y = myData$mpg)) +
             geom_point()
             
  
     myPlot <- ggplot(myData, aes(x = myData$wt, y = myData$mpg)) +
      geom_point(aes(color = factor(myData$cyl), size = factor(myData$cyl))) 
   
    myPlot <- ggplot(myData, aes(x = myData$wt, y = myData$mpg)) +
      geom_point(aes(color = factor(myData$cyl))) +
      annotate("rect", xmin=2.5, xmax=3.5, ymin=17, ymax= 22,
               fill=NA, colour="green") +
      annotate("text", x=2.75, y=19, label="Critical Data", size=3)
   
   
    myPlot <- ggplot(myData, aes(x = myData$wt, y = myData$mpg)) +
      geom_point(aes(color = factor(myData$cyl))) +
      stat_ellipse(geom = "polygon", alpha = 1/2, aes(fill = factor(myData$cyl)))
   
  
    myPlot <- ggplot(myData, aes(x = myData$wt, y = myData$mpg)) +
      geom_point(aes(color = factor(myData$cyl))) +
      geom_rect(aes(xmin = 2, xmax = 4, ymin = -Inf, ymax = Inf),
                             fill = "green", alpha = 0.003) 
   
  
  
  print(myPlot)
}



main <- function(){
  dat <- readData()
  createScatter(myData = dat)
  print("Done")
  
}

main()
