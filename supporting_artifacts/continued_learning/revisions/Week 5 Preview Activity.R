### WEEK 5 Preview w/ StringR

colleges_clean <- colleges_clean |> 
  mutate(CONTROL = fct_recode(CONTROL,
                              Public = "1",
                              Private = "2"),
         REGION = fct_recode(REGION, South = "0",
                             Southeast = "1", 
                             North = "2", 
                             Northeast = "3",
                             Northwest = "4",
                             Plains = "5",
                             Southwest = "6", 
                             Midwest = "7",
                             NewEngland = "8",
                             Appalacia = "9",
                             West = "10"))

colleges_clean2 <- colleges_clean |> 
  mutate(CONTROL = fct_recode(CONTROL,
                              Public = "1",
                              Private = "2"),
         REGION = fct_reorder(REGION))

colleges_clean2$INSTNM



string <-tibble("My name is bond", "Hi")
str_length(string)
length(string)

vec <- colleges_clean$INSTNM

vec <- str_sort(vec, decreasing = TRUE, na_last =
                  TRUE, locale = "en", numeric = FALSE)

str_length(vec)

library(lubridate)
year("2021")

make_date(year = 1998, month = 09, day = 16, tz = "Los Angeles")

dmy("16-Sep-1998", tz = "America/Los_Angeles")

bday <- ymd_hms("1998-09-16 06:23:42")
wday(bday, label = TRUE)

(bday + years(27)) |> 
  wday(label = TRUE)

bday2 <- ymd_hms("2002-12-25 00:00:00")
bday%within%bday2

make_date(year = 1987, month = 09)

bday - months(9)
  