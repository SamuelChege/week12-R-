### a) Specifying the Data Analytic Question

# A Kenyan entrepreneur has created an online cryptography course and would want to advertise it
# on her blog. She currently targets audiences originating from various countries. In the past,
# she ran ads to advertise a related course on the same blog and collected data in the process.
# She would now like to employ your services as a Data Science Consultant to help her identify
# which individuals are most likely to click on her ads. 

### b) Defining the Metric for Success

1. Define the question, the metric for success, the context, experimental design taken and the appropriateness of the available data to answer the given question.
2. Find and deal with outliers, anomalies, and missing data within the dataset.
3. Perform  univariate and bivariate analysis.
4. From your insights provide a conclusion and recommendation.

### c) Understanding the context 

### d) Recording the Experimental Design

*   upload and read our csv files
*   clean our dataset
*   perfom EDA

### e) Data Relevance

The dataset for this Independent project can be found here [Link (http://bit.ly/IPAdvertisingData)].

it has the following columns
'Daily.Time.Spent.on.Site'
'Age'
'Area.Income'
'Daily.Internet.Usage'
'Ad.Topic.Line'
'City'
'Male'
'Country'
'Timestamp'
'Clicked.on.Ad'






#reading the csv file


head(advertising)

#changing to dataframe
dt <- data.frame(advertising)
head(dt)

#checking for missing data
colSums(is.na(dt))
#there is no missing data

#checking for outliers
boxplot(dt$Daily.Time.Spent.on.Site)

boxplot(dt$Age)

boxplot(dt$Area.Income)
# it has some outlier on the lower

boxplot(dt$Daily.Internet.Usage)

boxplot(dt$Clicked.on.Ad)

#Checking for duplicates
#duplicates <- dt[duplicated(dt),]
#duplicates
anyDuplicated(dt)
#we have no duplicates in our data

#Checking for unique values
#unique.topicline <- unique(dt$Ad.Topic.Line)
#unique.topicline

#getting our data description
summary(dt)

#univariate analysis

daily.time <- dt$Daily.Time.Spent.on.Site
daily.time.frequency <- table(daily.time)
barplot(daily.time.frequency)

age <- dt$Age
age.frequency <- table(age)
barplot(age.frequency)

daily.internet <- dt$Daily.Internet.Usage
daily.internet.frequency <- table(daily.internet)
barplot(daily.internet.frequency)

gender <- dt$Male
gender.frequency <- table(gender)
barplot(gender.frequency)

ad.click <- dt$Clicked.on.Ad
ad.click.frequency <- table(ad.click)
barplot(ad.click.frequency)

#histograms
hist(dt$Daily.Time.Spent.on.Site)
hist(dt$Age)
hist(dt$Area.Income)
hist(dt$Daily.Internet.Usage)

#Bivariate analysis
#checking covariance
dailyTime <- dt$Daily.Time.Spent.on.Site
age <- dt$Age
areaIncome <- dt$Area.Income
dailyInternet <- dt$Daily.Internet.Usage
gender <- dt$Male
adClick <- dt$Clicked.on.Ad

cor(dailyTime, age)
cor(dailyTime, areaIncome)
cor(dailyTime, dailyInternet)
cor(dailyTime, gender)
cor(dailyTime, adClick)

cor(age, areaIncome)
cor(age, dailyInternet)
cor(age, gender)
cor(age, adClick)

cor(areaIncome, dailyInternet)
cor(areaIncome, gender)
cor(areaIncome, adClick)

cor(dailyInternet, gender)
cor(dailyInternet, adClick)

cor(gender, adClick)

#scatter plots

plot(dt$Daily.Time.Spent.on.Site, dt$Age, xlab="Daily Time Spent", ylab="Age")

plot(dt$Daily.Time.Spent.on.Site, dt$Daily.Internet.Usage, xlab="Daily Time Spent", ylab="Daily Internet Usage")

plot(dt$Daily.Time.Spent.on.Site, dt$Area.Income, xlab="Daily Time Spent", ylab="Area Income")

plot(dt$Daily.Internet.Usage, dt$Area.Income, xlab="Daily Internet Usage", ylab="Area Income")

plot(dt$Daily.Time.Spent.on.Site, dt$Clicked.on.Ad, xlab = "Daily Time Spent", ylab = "Clicking on Ad")

plot(dt$Age, dt$Clicked.on.Ad, xlab = "Age", ylab = "AD clicking")
install.packages('tinytex')
tinytex::install_tinytex()
tinytex::reinstall_tinytex()

#conclusion
### young people tend to spend most of the time on site
### people with high income spend most of their time on the site
### people with high income use internet mostly
### clicking on ad is not determined by age
###
###
###
###
