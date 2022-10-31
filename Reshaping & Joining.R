library(tidyverse)

cereals_DF <- read.csv(here::here("Week 3", "cereal.csv"))

cereals_long <- cereals_DF |> 
  pivot_longer(c(`protein`, `fiber`, `fat`),
                  names_to = "Nutrient",
                  values_to = "Amount")



#####

prof_info <- data.frame(
  professor = 
    c("Bodwin", "Glanz", "Carlton", "Sun", "Theobold"),
  undergrad_school = 
    c("Harvard", "Cal Poly", "Berkeley", "Harvard", "Colorado Mesa University"),
  grad_school = 
    c("UNC", "Boston University", "UCLA", "Stanford", "Montana State University")
)

prof_course <- data.frame(
  professor = c("Bodwin", "Glanz", "Carlton", "Theobold"),
  Stat_331 = c(TRUE, TRUE, TRUE, TRUE),
  Stat_330 = c(FALSE, TRUE, TRUE, FALSE),
  Stat_431 = c(TRUE, TRUE, FALSE, TRUE)
)

course_info <- data.frame(
  course = c("Stat_331", "Stat_330", "Stat_431"),
  num_sections = c(8, 3, 1)
)

new_prof_df <- inner_join(prof_info, prof_course)

new_prof_df2 <- full_join(prof_info, prof_course)

new_prof_course <- prof_course |> 
  pivot_longer(c(`Stat_331`, `Stat_330`, `Stat_431`),
               names_to = "course",
               values_to = "can_teach")

new_prof_df3 <- full_join(x = new_prof_course, y = course_info)
