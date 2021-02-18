plots_to_save <- list(plot_1, 
                      plot_2, 
                      plot_3, 
                      plot_4, 
                      plot_5, 
                      plot_6, 
                      plot_7, 
                      plot_8, 
                      plot_9, 
                      plot_10)


ggsave("plot_1.png", plot_1, device = "png")


# animate plots to date

require(gifski)

png_files <- list.files("E:/Users/Eddie/GitHub/tidytuesdaywork/", pattern = ".*png$", full.names = TRUE)
gifski(png_files, gif_file = "dubois_step10_v2.gif", width = 800, height = 600, delay = 0.5)

