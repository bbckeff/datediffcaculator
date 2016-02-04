
shinyUI(pageWithSidebar(
    headerPanel("DateDiff Calculator"),
    sidebarPanel(
        h4('Input Panel'),
        p('Here you can input dates to take the difference in days, hours and minutes between the two dates you input.'),
        dateInput("date1", "Strat Date:")  ,
        dateInput("date2", "End Date:")  ,
        p('Once you have these dates entered, click the "Caculate" button you will see the result in output panel.'),
        submitButton('Caculate')
    ),
    mainPanel(
        tabsetPanel(type="tabs",
                    tabPanel("Output Panel", 
                             h4('Caculate in Days'),
                             textOutput('text1'),
                             h4('Caculate in Hours'),
                             textOutput('text2'),
                             h4('Caculate in Minutes'),
                             textOutput('text3')
                    ),
                    tabPanel("About", 
                             h4("Application Purpose:"),
                             p('In the Developing Data Products Course Project, I have developed a Shiny Application for calculating date interval.'),
                             p('This Shiny application allows the user to choose two any range of dates and take the difference in days, hours and minutes.'),
                             h4('Presentation:'),
                             p('You can see the presentation slides by the follow link'),
                             p('http://rpubs.com/bbckeff/datediffcaculator1'),
                             h3('Cherish life and treasure time!')
                    )
        )
)
)
)
