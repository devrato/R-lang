data <- read.csv('P2-Movie-Ratings.csv')
View(data)

head(data)

colnames(data)

colnames(data) <- c('Film', 'Genre', 'CriticRatings', 'AudienceRatings', 'BudgetMns', 'YOR')
head(data)


data$YOR <- factor(data$YOR)
str(data)

#=================================

library(ggplot2)

?ggplot

plot <- ggplot(data = data, aes(x=CriticRatings, y=AudienceRatings, size=BudgetMns, color=Genre))

#using plot object of ggplot
plot + geom_point() + geom_line()
plot + geom_line() + geom_point() 

#overriding aes
plot + geom_point(aes(color=BudgetMns))
plot + geom_point(aes(x=BudgetMns))

plot + geom_point(aes(x=BudgetMns)) + xlab('Budget(Millions)')


plot + geom_line(size=2) 

#++++++++++++++++++++++++++++++++++

#Mapping color <- variable
plot + geom_point(aes(color=Genre))

#Setting color <- DarkGreen
plot + geom_point(color="DarkGreen")


plot + geom_point(aes(color="DarkGreen"))
plot + geom_point(aes(color=I("DarkGreen")))


#///////////////////////////////////

plot1 <- ggplot(data=data, aes(x=BudgetMns))

plot1 + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

plot1 + geom_density(aes(fill=Genre))
plot1 + geom_density(aes(fill=Genre), position = 'stack')

#LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

#layering basically
plot2 <- ggplot(data=data, aes(x=AudienceRatings))

plot2 + geom_histogram(binwidth = 5, fill='White', color='Blue')

#KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK

#using facets
plot3 <- ggplot(data=data, aes(x=BudgetMns))

plot3 + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

plot3 + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") + 
  facet_grid(Genre~., scales = "free")


#scatter plot
plot4 <- ggplot(data = data, aes(x=CriticRatings, y=AudienceRatings, color=Genre))

plot4 + geom_point(size=3) + facet_grid(Genre~.)

plot4 + geom_point(size=3) + facet_grid(.~YOR)

plot4 + geom_point(aes(size=BudgetMns)) + geom_smooth() + facet_grid(Genre~YOR)

#)))))))))))))))))))))))))))))))))))
# co-ordinates
#limits & zoom
#limits removes rest data whereas zoom doesnt

#zoom only shows data within the limits 
# xlim(x,y)

# coord_cartesian(xlim=c(0,50))






