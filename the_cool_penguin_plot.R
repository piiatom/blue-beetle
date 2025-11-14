#see the data
summary(palmerpenguins::penguins)

raw_data = palmerpenguins::penguins
plot(raw_data$flipper_length_mm, raw_data$body_mass_g, xlab = "Flipper length (mm)", ylab = "Body mass (g)", main = "The penguin plot")


