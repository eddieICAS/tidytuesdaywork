# inspect data
head(freed_slaves)

# pivot to put %s in single row
freed_slaves_pvt <- freed_slaves %>%
  pivot_longer(cols = 2:3)

# check data
head(freed_slaves_pvt)

# Add column titles to pivoted data
names(freed_slaves_pvt)[2] <- "status"
names(freed_slaves_pvt)[3] <- "percentage"

# check data for names
head(freed_slaves_pvt)
