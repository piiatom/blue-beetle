#see the data
summary(palmerpenguins::penguins)
library(ggplot2)
library(viridis)

raw_data = palmerpenguins::penguins
plot(raw_data$flipper_length_mm, raw_data$body_mass_g, xlab = "Flipper length (mm)", ylab = "Body mass (g)", main = "The penguin plot")

raw_data |> 
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, col = species)) +
  geom_point() +
 # geom_smooth(method = "lm") +
  labs(x = "Flipper length (mm)", y = "Body mass (g)", title = "The pengin plot") +
  theme_bw()
