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
  
  # okay colours go other way around
  dubois_colours = c("#00aa00", "#000000")
  
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
  