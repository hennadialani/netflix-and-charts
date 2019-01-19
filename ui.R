#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Gender (Text Input), 

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  # Tidying up your data with Marie Kondo. Let's spark some joy with a Netflix 2018 in review.
  # 2018 in review because Netflix doesn't give it to you! 
  
  # Dotplot of 2018 - here's the unique content you viewed this year.
  # Donut chart for genres. 
  # _____ % of what you watched in 2018 are movies. (Notes: We counted comedy specials as movies.) ____ are TV shows. 
  # Assuming ____ you have watched ___ 
  
  # On this day you watched ____ (max titles). Either you were indecisive or you were glued to your TV. Are you still watching?
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
