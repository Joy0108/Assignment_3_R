#-------------------------------Q-1------------------------------------------

library(ggplot2)
library(datasets)
data(iris)
ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, color = Species)) +
  geom_point() +
  labs(x = "Petal Length", y = "Sepal Length", color = "Species")

## Analyzing the plot, we can make the following observations:

# 1. There is a positive correlation between Sepal Length and Petal Length. As Petal Length increases, Sepal Length also tends to increase.

# 2. The Setosa species generally has the smallest Sepal Length and Petal Length compared to the other two species.

# 3. The Virginica species has the largest Sepal Length and Petal Length values.

# 4. There is some overlap between the Sepal Length and Petal Length values of the Virginica and Versicolor species.


#-------------------------------Q-2------------------------------------------

library(ggplot2)
data("txhousing")
str(txhousing)
summary(txhousing)
sum(is.na(txhousing))
txhousing <- txhousing[complete.cases(txhousing),]
ggplot(txhousing, aes(x = city, y = sales, color = city)) +
  geom_boxplot() +
  labs(title = "City vs. Sales", x = "City", y = "Sales") +
  theme(axis.text.x = element_text(angle = 75, vjust = 0.5))
ggplot(txhousing, aes(x = year, y = sales, color = city)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "Sales vs. Year", x = "Year", y = "Sales")
ggplot(txhousing, aes(x = year, y = median, color = city)) +
  geom_point() +
  labs(x = "Year", y = "Median House Price", title = "Median House Prices by Year")
ggplot(txhousing, aes(x = month, y = median)) +
  geom_boxplot() +
  labs(x = "Month", y = "Median House Price", title = "Median House Prices by Month")


#-----------------------------Q-3--------------------------------------------


library(ggplot2)
titanic <- read.csv("titanic.csv")
titanic$Survived <- factor(titanic$Survived, labels = c("Died", "Survived"))
final_Plot <- ggplot(titanic, aes(x = Fare, y = Survived, color = Sex)) +
  geom_boxplot(aes(y = Survived)) +
  labs(
    title = "Fare vs. Survival",
    subtitle = "Regardless of Sex, wealthier individuals had higher chances of survival",
    x = "Fare",
    y = NULL
  )
final_Plot


