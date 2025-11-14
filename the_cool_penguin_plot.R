#see the data
summary(palmerpenguins::penguins)
library(ggplot2)
library(viridis)

raw_data = palmerpenguins::penguins
plot(raw_data$flipper_length_mm, raw_data$body_mass_g, xlab = "Flipper length (mm)", ylab = "Body mass (g)", main = "The penguin plot")

raw_data |> 
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, col = species)) +
  geom_point() +
  scale_color_viridis(option = "viridis", discrete = TRUE) +
  labs(x = "Flipper length (mm)", y = "Body mass (g)", title = "The penguin plot") +
  theme_bw()


#something went SOOOOO wrong