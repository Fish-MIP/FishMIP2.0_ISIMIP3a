# Camilla Novaglio
# 20/02/2023
# Create time vectors for ISIMIP3a spin-up and experiment for NetCDF and csv outputs for global and regional models 

rm(list=ls())

library(lubridate) # https://data.library.virginia.edu/working-with-dates-and-time-in-r-using-the-lubridate-package/
library(dplyr)

df_experiment<-data.frame(Reference_date = ymd("1901-1-1"), Date_ymd = seq(ymd("1961-1-1"), ymd("2010-12-31"), by = "month")) %>% 
  mutate(
    Interval = Reference_date %--% Date_ymd,
    N_days_since_1901_01_01 = as.duration(Interval) / ddays(1), 
    # Date_ymd = paste("'", as.character(Date_ymd)) # prevent csv to print this as date
    ) %>% 
  select(-Reference_date)

df_spin_up<-data.frame(Reference_date = ymd("1841-1-1"), Date_ymd = seq(ymd("1841-1-1"), ymd("1960-12-31"), by = "month")) %>% 
  mutate(
    Interval = Reference_date %--% Date_ymd,
    N_days_since_1841_01_01 = as.duration(Interval) / ddays(1),
    # Date_ymd = paste("'", as.character(Date_ymd))
    ) %>% 
  select(-Reference_date)

str(df_experiment)

library(readr)
write_csv(df_experiment, "/Users/camillan/Desktop/time_vector/time_axis_experment.csv")
write_csv(df_spin_up, "/Users/camillan/Desktop/time_vector/time_axis_spinup.csv")

# check if + in file name (i.e. for netCDF obsclim_nat_1955-riverine-input+60arcmin) is problematic: 
write_csv(df_experiment, "/Users/camillan/Desktop/time_vector/time_axis+experment.csv")
read_csv("/Users/camillan/Desktop/time_vector/time_axis+experment.csv")
