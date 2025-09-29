library(dplyr)     # data manipulation
library(readr)
library(ggplot2)   # visualizatoion


# Linear regression
fish_length <- read_csv("data/fish_length.csv", col_names = T)

model_age <- lm(Length ~ Age, data = fish_length)
model_temp <- lm(Length ~ Temperature, data = fish_length)
model_all <- lm(Length ~ Age + Temperature, data = fish_length)

summary(model_age)
summary(model_temp)
summary(model_all)


# Predictions
predicted_table <- fish_length

# Age model
predicted_table$prediction_age <- predict(model_age)
rmse_age <- sqrt(mean((predicted_table$prediction_age - fish_length$Length)^2))

predicted_table$prediction_temp <- predict(model_temp)
rmse_temp <- sqrt(mean((predicted_table$prediction_temp - fish_length$Length)^2))

predicted_table$prediction_all <- predict(model_all)
rmse_all <- sqrt(mean((predicted_table$prediction_all - fish_length$Length)^2))

ggplot(predicted_table, aes(x = Age, y = Length)) +
  geom_point(color = "blue") +
  geom_line(aes(y = prediction_age), color = "red") +
  labs(x = "Age", y = "Length of fish") +
  annotate("text", x = 120, y = 1000,
           label = paste0("Age model: RMSE=", round(rmse_age,2)))

ggplot(predicted_table, aes(x = Age, y = Length)) +
  geom_point(color = "blue") +
  geom_line(aes(y = prediction_temp), color = "red") +
  labs(x = "Age", y = "Length of fish") +
  annotate("text", x = 120, y = 1000,
           label = paste0("Age model: RMSE=", round(rmse_temp,2)))
ggplot(predicted_table, aes(x = Age, y = Length)) +
  geom_point(color = "blue") +
  geom_line(aes(y = prediction_all), color = "red") +
  labs(x = "Age", y = "Length of fish") +
  annotate("text", x = 120, y = 1000,
           label = paste0("Age model: RMSE=", round(rmse_all,2)))


# Interaction model
model_all_int <- lm(Length ~ Age + Temperature + Age*Temperature, data = fish_length)
predicted_table$prediction_all_int <- predict(model_all_int)
rmse_all_int <- sqrt(mean((predicted_table$prediction_all_int - fish_length$Length)^2))

ggplot(predicted_table, aes(x = Age, y = Length)) +
  geom_point(color = "blue") +
  geom_line(aes(y = prediction_all_int), color = "red") +
  labs(title = "Linear model prediction with error bars",
       x = "Age", y = "Length of fish") +
  annotate("text", x = 120, y = 1000,
           label = paste0("Age model: RMSE=", round(rmse_all_int,2)))


# Stratified exploration
ggplot(predicted_table, aes(x = Age, y = Length,
                            group = Temperature,
                            color = as.factor(Temperature))) +
  geom_line() +
  labs(color = "Temperature")


# Plot linear predictor with real values and errors shown with vertical bars
# TODO
