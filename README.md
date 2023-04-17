# College-Dataset_GLM-and-Logistic-Regression
implementing GLM and Logistic Regression College dataset in R

I use the “college” data set from the ISLR library that has 18 variables and 777 observations. 
The objective is to predict whether a university is private or public. 

I predicted whether a university is private or public by performing Generalized linear 
models. I used a college data set, at first, I did an EDA and found that there were 212 public and 565 private 
universities. Also, an average of 3002 applications had been received in the universities that 2019 applicants 
had been accepted, and about 780 of the applicants had been enrolled in the university. In addition, most of 
my continuous variables followed the asymmetric distribution. There was right skew that might be because 
of outliers. Then I used histogram, boxplot, and scatter plots to analyze my data set and find relationships
between my variables. Then I implemented a glm model to create my model. I used private variables as a 
response variable and the rest of my variables were predictors. After creating the model, I split my data set 
to train and test the data set and perform prediction. The accuracy of the train data set was about 0.96 
which means the model prediction was good. As my prediction of the training data set was good, I used the 
test data set to predict the probability that a new university is private or public. Then I computed the 
confusion matrix to assess the performance of my model. The accuracy of my test data set was good as well 
by 0.93. the ROC curve indicated good performance since the curves were closer to the top-left corner. 
The result of the area under the ROC curve is 0.97. when the result is between 0.9-1, we can consider that 
the performance is excellent.
