library(shiny)
library(plotly)
library(leaflet)

shinyUI(navbarPage('Police Killings 2013 - 2016',

#******************************SUMMARY***********************************                     
     tabPanel("Summary",
              sidebarLayout(
               sidebarPanel(
                 p("INFO 201 Final Project"),
                 p("By: Shaarika Kaul, Ishan Narula, Andy Taing, Ada Arquiza, & Linh Tran")
               ),
                mainPanel(
                  h1("Our Project"),
                  h3("Police violence has affected many individuals in the United States. With the rise of police brutality accusations, the exploration of implicit biases, 
                    and movements against inequity in recent years, our INFO 201 group decided to explore the data and trends regarding these sensitive events. We want to show the data as free of bias
                    as possible, and our analysis will visualize trends in data. This data contains information about people who have been killed by police violence."),
                  h3("Our Questions:"),
                  h4("1. Where have fatal incidents occurred? "),
                  h4("2. Are certain groups more affected by police violence than others?"),
                  h4("3. How has the distribution of incidents changed over time?"),
                  h4("4. Case Study: How have Black Americans been affected by police killings?"),
                  h3("Our Chosen Dataset:"),
                  h4("The dataset we are working with is from mappingpoliceviolence.org, and contains details of police killings in the United States from 2013-2016. As per their website, 
                      \"Mapping Police Violence is a research collaborative collecting comprehensive data on police killings nationwide to quantify 
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
                 leafletOutput('map'),
                 
                 br(),
                 h4("This map shows the locations of various police killings in the United States."),
                 br(),
                 h4("-Select to view incidents in a particular year, or all years."),
                 h4("-Change the dataset to view incidents in terms of race, arme states, or age"),
                 h4("- Change marker size and opacity for your viewing convenience")
               )
      ),

  tabPanel('Bar Chart',
           sidebarLayout(
             sidebarPanel(
               selectInput('dropdown', label = 'Variables', choices = list("Gender" = 'gender_test', 
                            "Race" = 'race_test', 'Age Group' = 'age_test', 'Situation' = 'armed_test'))
             ),
             mainPanel(
               plotlyOutput('chart'),
               br(),
               h4("This visualization depicts the proportion of groups affected by police killings in big cities
                  across the United States."),
               br(),
               h4("-Select from gender, race, age group, and situation."),
               h4("-Hover to view exact numbers of instances.")
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
             plotlyOutput('scatter'),
             br(),
             h4("This scatter plot represents the number of Black victims of police killings in proportion to the Black population of the state. 
                  This is not meant to undermine the importance of how police violence has affected other groups. However, due to recent events, we were wanted to learn more 
                about the violence commited against the Black Americans based on the racial distribution in given states."),
             h4("In certain states such as Massachusetts, there is a higher disparity percentage because they have a low black population in the state (22%) but their percentage of Black Victims from is (87.5%). 
                It is important to identify the disparities throughout the country to understand how implicit biases and policies may be affecting our society."),
             br(),
             h4("-Type a state name to view its point individually")
           )
           
         )
) #,
         
###ENDING BRACKETS### 

))