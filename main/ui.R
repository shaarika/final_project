library(shiny)
library(plotly)
library(leaflet)

shinyUI(navbarPage('Police Killings 2013 - 2016',

#******************************SUMMARY***********************************                     
     tabPanel("Summary",
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
     ),
  

#********************************MAP************************************     
      tabPanel("Map of incidents",
               sidebarPanel(
                 
                 # create checkbox group for year
                 radioButtons("year", label = h3("Select a time period:"), 
                              choices = list("2013" = 'police_final_2013', "2014" = 'police_final_2014', "2015" = 'police_final_2015',
                                             "2016" = 'police_final_2016', "All" = 'police_final'),
                              selected = 'police_final'),
                 
                 # create dropdown for dataset
                 selectInput("dataset", label = h3("Select a dataset to display:"), 
                             choices = list("Race of victim" = 'race', "Armed status" = 'armed',
                                            "Age of victim" = 'age.group'), 
                             selected = 'race'),
                 
                 # create slider to adjust marker size
                 sliderInput("size", label = h3("Marker size:"), min = 1, 
                             max = 10, value = 2),
                 
                 # create slider to adjust marker opacity
                 sliderInput("opacity", label = h3("Marker opacity:"), min = 0.1, 
                             max = 1.0, value = 0.8)
               ),
               
               mainPanel(
                 
                 # set title
                 titlePanel("Location of Brutality Incidents"),
                 
                 # display plot
                 leafletOutput('map')
                 
               )
      ),

  tabPanel('Bar Chart',
           sidebarLayout(
             sidebarPanel(
               selectInput('dropdown', label = 'Variables', choices = list("Gender" = 'gender_test', 
                            "Race" = 'race_test', 'Age Group' = 'age_test', 'Situation' = 'armed_test'))
             ),
             mainPanel(
               plotlyOutput('chart')
             )
           )
),

#*************************************** CASE STUDY **********************************************
tabPanel('Case Study',
         # Add a titlePanel to your tab
         titlePanel('Black Population vs Black Victim'),
         
         # Create a sidebar layout for this tab (page)
         sidebarLayout(
           
           # Create a sidebarPanel for your controls
           sidebarPanel(
             
             # Make a textInput widget for searching for a state in your scatter plot
             textInput('search', label="Find a State", value = '')
           ),
           
           # Create a main panel, in which you should display your plotly Scatter plot
           mainPanel(
             plotlyOutput('scatter')
           )
         )
)
         
###ENDING BRACKETS### 

))