library(shiny)

data_years <- c("2012", "2013","2014", "2015")
data_graf <- c("By Year", "Top 10 States", "Comparison By 4 States")

fluidPage(
  pageWithSidebar(
    headerPanel("Malaysia's Dengue Cases in the year between 2012 to 2015"),

    sidebarPanel(
      helpText("Please choose the year to see the sample of dengue data",
               "in a table form in DISPLAY DENGUE TABLE tab."),
      selectInput("datayear", label = "Select year", choices = data_years),
      helpText("Please click PLOT DENGUE CASES tab to see the graph.",
               "The plot display the general trend of dengue outbreak",
               "in Malaysia in the years as given in the dataset."),
      selectInput("graf1", label = "Select plot type", choices = data_graf),
      br(),
      a(href = "https://github.com/fhaneem/DevelopingDataProduct.git", "The Shiny Apps server.R and ui.R Source code")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Display Dengue Table", tableOutput("data_table")),
        tabPanel("Plot Dengue Cases", plotOutput("data_plot")))
      )
  )
)
