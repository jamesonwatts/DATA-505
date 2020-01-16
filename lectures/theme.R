jameson <- theme_minimal() +
  theme(
    text = element_text(family = "Palatino", color = "gray25"),
    plot.subtitle = element_text(size = 12),
    plot.caption = element_text(color = "gray30"),
    plot.background = element_rect(fill = "gray95"),
    plot.margin = unit(c(5, 10, 5, 10), units = "mm")
  )
theme_set(jameson)

library(wesanderson)
scale_colour_discrete <- function(...) {
  scale_colour_manual(..., values = wes_palette(n=8, name="Moonrise3", type = "continuous"))
}
scale_fill_discrete <- function(...) {
  scale_fill_manual(..., values = wes_palette(n=8, name="Moonrise3", type = "continuous"))
}

lc=wes_palette(n=2, name="Moonrise3")[[1]]
hc=wes_palette(n=2, name="Moonrise3")[[2]]
scale_colour_continuous <- function(...) {
  scale_colour_gradient(..., low = lc, high = hc)
}
scale_fill_continuous <- function(...) {
  scale_fill_gradient(..., low = lc, high = hc)
}