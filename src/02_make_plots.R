library(tidyverse)

d <- read_csv('data/gapminder.csv')

glimpse(d)
d_2007 <- subset(d, year==2007)

ggplot(d_2007, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  labs(title = "Log-transformed y-axis (base 10)")

"figs/lifeExp_vs_gdpPercap_2007.pdf"