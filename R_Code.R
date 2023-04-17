
# load data from ISLR library
# install.packages("ISLR")
library(ISLR)

data(College)

summary(College)
str(College)
sum(is.na(College))


# Distribution of Number OF Application
h1 <- ggplot( data = College, aes(x=Apps)) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of Number OF Application", 
       y="", 
       x="Application", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

# Distribution of Run Score
h2 <- ggplot( data = College, aes(x=Accept)) + geom_histogram(color="#800080", fill="#BA55D3" ) +
  labs(subtitle="Distribution of Number accepted", 
       y="", 
       x="Accepted", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

# Distribution of Number OF new students enrolled
h3 <- ggplot( data = College, aes(x=Enroll)) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of Number of new students enrolled", 
       y="", 
       x="New students enrolled", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

# Distribution of Number OF fulltime undergraduates
h4 <- ggplot( data = College, aes(x = F.Undergrad)) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of fulltime undergraduates", 
       y="", 
       x="Fulltime undergraduates", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 



library(ggpubr)

ggarrange(h1, h2, h3,h4 + rremove("x.text"), 
          labels = c("A", "B", "C","D"),
          ncol = 2, nrow = 2)

# Distribution of Number OF Parttime undergraduates
h5 <- ggplot( data = College, aes(x = P.Undergrad)) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of Parttime undergraduates", 
       y="", 
       x="Parttime undergraduates", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

# Distribution of Number OF Outstate
h6 <- ggplot( data = College, aes(x = Outstate )) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of Out-of-state tuition", 
       y="", 
       x="Out-of-state tuition", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

# Distribution of Number OF Books
h7 <- ggplot( data = College, aes(x = Books)) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of Books", 
       y="", 
       x="Books", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

# Distribution of Number OF Graduation rate
h8 <- ggplot( data = College, aes(x = Grad.Rate)) + geom_histogram(color="#800080", fill="#BA55D3") +
  labs(subtitle="Distribution of Graduation rate", 
       y="", 
       x="Graduation rate", 
       title="", 
       caption = "Source: College")+
  theme(plot.subtitle = element_text(size = 9)) 

ggarrange(h5, h6, h7,h8 + rremove("x.text"), 
          labels = c("E", "F", "G","H"),
          ncol = 2, nrow = 2)


#  Box Plot
b1 <- ggplot(College, aes(Private, Enroll, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="New student enrolled by private", 
       y="New students enrolled", 
       x="Private", 
       title="", 
       caption = "Source: College")

#  Box Plot
b2 <- ggplot(College, aes(Private, Accept, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="Number of accepted by private", 
       y="accepted", 
       x="Private", 
       title="", 
       caption = "Source: College")

#  Box Plot
b3 <- ggplot(College, aes(Private, PhD, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="Percentage of faculty with Ph.D.'s", 
       y="Pct. of faculty with Ph.D.'s", 
       x="Private", 
       title="", 
       caption = "Source: College")
#  Box Plot
b4 <-ggplot(College, aes(Private, F.Undergrad, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="Number of fulltime undergraduates by private", 
       y="Number of fulltime undergraduates", 
       x="Private", 
       title="", 
       caption = "Source: College")

#  Box Plot
b5 <- ggplot(College, aes(Private, Outstate, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="Out-of-state tuition by private", 
       y="Out-of-state tuition", 
       x="Private", 
       title="", 
       caption = "Source: College")
#  Box Plot
b6 <- ggplot(College, aes(Private, perc.alumni, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="Percentage of alumni who donate", 
       y="Pct. alumni who donate", 
       x="Private", 
       title="", 
       caption = "Source: College")

#  Box Plot
b7 <- ggplot(College, aes(Private, Grad.Rate, fill=Private)) +
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)+
  labs(subtitle="Graduation rate by private", 
       y="Graduation rate", 
       x="Private", 
       title="", 
       caption = "Source: College")

ggarrange(b1, b2 + rremove("x.text"), 
          labels = c("A", "B"),
          ncol = 2, nrow = 1)

ggarrange(b3, b4 + rremove("x.text"), 
          labels = c("C", "D"),
          ncol = 2, nrow = 1)

ggarrange(b5, b6 + rremove("x.text"), 
          labels = c("E", "F"),
          ncol = 2, nrow = 1)
ggarrange(b7 + rremove("x.text"), 
          labels = c( "G"),
          ncol = 1, nrow = 1)

# Correlation matrix

library(dplyr)

df <- print(select_if(College, is.numeric))
corr <- round(cor(df), 1)

#-------------------------------------------------------------------------------
library(ggcorrplot)
ggcorrplot(corr, tl.cex = 7 , title = "Correlation Plot", method  =  "circle",
           lab = TRUE , lab_size = 3)

# pairs(College[,1:10])

#  Scatter Plot
ggplot(College, aes(x=Apps, y=Accept, color= Private)) + geom_point()+
  labs(subtitle="Correlation Number OF Application Vs Acceptance by Private", 
       y="Number OF Acceptance", 
       x="Number OF Application", 
       title="Scatterplot", 
       caption = "Source: College")

#  Scatter Plot
ggplot(College, aes(x=Accept, y=Enroll, color= Private)) + geom_point()+
  labs(subtitle="Correlation Number OF Acceptance Vs Enrrole by Private", 
       y="Number of new students enrolled", 
       x="Number OF Acceptance", 
       title="Scatterplot", 
       caption = "Source: College")
#  Scatter Plot
ggplot(College, aes(x=Accept, y=F.Undergrad, color= Private)) + geom_point()+
  labs(subtitle="Correlation Number OF Acceptance Vs fulltime undergraduates by Private", 
       y="Number of fulltime undergraduates", 
       x="Number OF Acceptance", 
       title="Scatterplot", 
       caption = "Source: College")


# Create Train and Test set - maintain % of event rate (70/30 split)

# install.packages("caret")

library(caret)
set.seed(123)
trainIndex <- createDataPartition(College$Private, p = 0.7, list = FALSE)
College_train <- College[ trainIndex,]
College_test <- College[-trainIndex,]

# Fit the logistical regression model
library(stats)

model1 <- glm(Private ~. ,data = College_train , family= binomial( link = "logit") )
summary(model1)


# display Coefficients (log-odds)
coef(model1)

# display Coefficients (odds)
exp(coef(model1))

# odds of private increase by a factor of 0.99928744for each increase in F.Undergrad

# *****************************************************************************
# Train set prediction
# *****************************************************************************
# make predictions on the test data using lambda.min

probabilities.train <- predict(model1, newdata = College_train , type = "response")
predicted.classes.min <- as.factor(ifelse(probabilities.train >= 0.5,"Yes" , "No"))

# model accuracy
nrow(College_train)
nrow(College_test)

confusionMatrix(predicted.classes.min , College_train$Private , positive = "Yes")

# *****************************************************************************
# Test set prediction
# *****************************************************************************
# make predictions on the test data using lambda.min
model2 <- glm(Private ~. ,data = College_test , family= binomial( link = "logit") )
summary(model2)

probabilities.test <- predict(model2, newdata = College_test , type = "response")
predicted.classes.min2 <- as.factor(ifelse(probabilities.test >= 0.5,"Yes" , "No"))

# model accuracy

confusionMatrix(predicted.classes.min2 , College_test$Private , positive = "Yes")

# plot the receiver operator characteristic curve
library(pROC)
ROC1 <- roc(College_test$Private , probabilities.test)
ROC1

plot( ROC1 , col = "green" , ylab = " sensitivity - TP Rate" , xlab = "specificity - FP Rate")

# Calculate the area under the ROC curve
auc <- auc(ROC1)
auc
