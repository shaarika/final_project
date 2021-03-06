shinyUI(fluidPage(
  titlePanel("Police Killings 2013-2016"),
  
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      h1("Summary"),
      p("Police killings have affected many individuals in the United States. With the rise of police brutality accusations, the exploration of implicit biases, 
        and movements against inequity in recent years, our group decided to explore the data and trends regarding these sensitive events. We want to show the data as free of bias
        as possible, and our analysis will visualize trends in data."),
      
      p("The dataset we are working with is from mappingpoliceviolence.org, and contains details of police killings in the United States from 2013-2016. 
        As per their website, \"Mapping Police Violence is a research collaborative collecting comprehensive data on police killings nationwide to quantify 
        the impact of police violence in communities.\"
        Their team includes a data scientist, activists, journalists, and teachers.")
    )
  )
))