# make first plot

  # this wont work because the "..."'s mean r looks at a literal character vector as the data, and not the *object* => need to unquote things here.

  # ggplot(data = "freed_slaves_pvt", 
  #        aes(x = "Year",
  #            y = "percentage",
  #            fill = "status") 
  # )

plot_1 <- ggplot(data = freed_slaves_pvt, 
                 aes(x = Year,
                     y = percentage,
                     fill = status) # split y value according to status proportion 
                 )

# oh right i need an geom
plot_2 <- ggplot(data = freed_slaves_pvt, 
                 aes(x = Year,
                     y = percentage,
                     fill = status)
                 ) +
  geom_area() # 100% stacked bar

# Lets adjust some colours
  # colours from style guide
  dubois_colours = c("#000000", "#00aa00") # black & green
 
  # replot with colours
  plot_3 <- ggplot(data = freed_slaves_pvt, 
                   aes(x = Year,
                       y = percentage,
                       fill = status)
                   ) +
    geom_area() +
    scale_fill_manual(values = dubois_colours) # scale_fill_manual is used to specify colour fill
  
  # okay colours go other way around and better match to original plates
  dubois_colours = c("#629169", "#191919")
  
  plot_4 <- ggplot(data = freed_slaves_pvt, 
                   aes(x = Year,
                       y = percentage,
                       fill = status)
                   ) +
    geom_area() +
    scale_fill_manual(values = dubois_colours)
  
# I should add some titles
plot_5 <- ggplot(data = freed_slaves_pvt, 
       aes(x = Year,
           y = percentage,
           fill = status)
       ) +
  geom_area() +
  scale_fill_manual(values = dubois_colours) +
  labs(
    title = "PROPORTION OF FREEMEN AND SLAVES AMONG AMERICAN NEGROS",
    subtitle = "PROPORTION DES NÈGRES LIBRES ET DES ESCLAVES EN AMÉRIQUE",
    caption = "DONE BY ATLANTA UNIVERSITY"
  )
  
# Get rid of legend, remove axis titles
plot_6 <- ggplot(data = freed_slaves_pvt, 
                 aes(x = Year,
                     y = percentage,
                     fill = status)
                 ) +
  geom_area() +
  scale_fill_manual(values = dubois_colours) +
  labs(
    title = "PROPORTION OF FREEMEN AND SLAVES AMONG AMERICAN NEGROS",
    subtitle = "PROPORTION DES NÈGRES LIBRES ET DES ESCLAVES EN AMÉRIQUE",
    caption = "DONE BY ATLANTA UNIVERSITY",
    x = NULL,
    y = NULL
  ) +
  theme(legend.position = "none")

# Center and reposition titles/caption
plot_7 <- ggplot(data = freed_slaves_pvt, 
                 aes(x = Year,
                     y = percentage,
                     fill = status)
                 ) +
  geom_area() +
  scale_fill_manual(values = dubois_colours) +
  labs(
    title = "PROPORTION OF FREEMEN AND SLAVES AMONG AMERICAN NEGROS",
    subtitle = "PROPORTION DES NÈGRES LIBRES ET DES ESCLAVES EN AMÉRIQUE",
    caption = "DONE BY ATLANTA UNIVERSITY",
    x = NULL,
    y = NULL
  ) +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5),
        plot.caption = element_text(hjust = 0.5, vjust = 1) # How do i move caption to top
  )

# Add some other colour elements for titles and background
dubois_black <- "#191919"
dubois_bgcol <- "#ddd5c7"

plot_8 <- ggplot(data = freed_slaves_pvt, 
                 aes(x = Year,
                     y = percentage,
                     fill = status)
                 ) +
  geom_area() +
  scale_fill_manual(values = dubois_colours) +
  labs(
    title = "PROPORTION OF FREEMEN AND SLAVES AMONG AMERICAN NEGROS",
    subtitle = "PROPORTION DES NÈGRES LIBRES ET DES ESCLAVES EN AMÉRIQUE",
    caption = "DONE BY ATLANTA UNIVERSITY",
    x = NULL,
    y = NULL
  ) +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5, colour = dubois_black),
        plot.subtitle = element_text(hjust = 0.5, colour = dubois_black),
        plot.caption = element_text(hjust = 0.5, vjust = 1, colour = dubois_black),
        plot.background = element_rect(fill = dubois_bgcol)
  )

# Remove y-axis ticks/numbers
plot_9 <- ggplot(data = freed_slaves_pvt, 
                 aes(x = Year,
                     y = percentage,
                     fill = status)
                 ) +
  geom_area() +
  scale_fill_manual(values = dubois_colours) +
  labs(
    title = "PROPORTION OF FREEMEN AND SLAVES AMONG AMERICAN NEGROS",
    subtitle = "PROPORTION DES NÈGRES LIBRES ET DES ESCLAVES EN AMÉRIQUE",
    caption = "DONE BY ATLANTA UNIVERSITY",
    x = NULL,
    y = NULL
  ) +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5, colour = dubois_black),
        plot.subtitle = element_text(hjust = 0.5, colour = dubois_black),
        plot.caption = element_text(hjust = 0.5, vjust = 1, colour = dubois_black),
        plot.background = element_rect(fill = dubois_bgcol),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank()
  )

# Remove background grid and panelspace
plot_10 <- ggplot(data = freed_slaves_pvt, 
                  aes(x = Year,
                      y = percentage,
                      fill = status)
                  ) +
  geom_area() +
  scale_fill_manual(values = dubois_colours) +
  labs(
    title = "PROPORTION OF FREEMEN AND SLAVES AMONG AMERICAN NEGROS",
    subtitle = "PROPORTION DES NÈGRES LIBRES ET DES ESCLAVES EN AMÉRIQUE",
    caption = "DONE BY ATLANTA UNIVERSITY",
    x = NULL,
    y = NULL
  ) +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5, colour = dubois_black),
        plot.subtitle = element_text(hjust = 0.5, colour = dubois_black),
        plot.caption = element_text(hjust = 0.5, vjust = 1, colour = dubois_black),
        plot.background = element_rect(fill = dubois_bgcol),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank()
  )

# Put x axis on top

# Show every 10 years

# Add vertical lines at each 10 years

# Add thickness to some vertical lines only similar to original

# Use some fonts on titles etc.

# Add callouts for Free %age at each datapoint

# Add mid-chart text labels