
##### Data Cleaning #######



# Selecting columns of interest

fires_small <- fires %>%
  select(NWCG_REPORTING_AGENCY, SOURCE_REPORTING_UNIT_NAME, FIRE_NAME,
         FIRE_YEAR, DISCOVERY_DATE, DISCOVERY_DOY, DISCOVERY_TIME, CONT_DATE,
         CONT_DOY, CONT_TIME, STAT_CAUSE_CODE, STAT_CAUSE_DESCR, FIRE_SIZE, 
         FIRE_SIZE_CLASS, LATITUDE, LONGITUDE, OWNER_CODE, OWNER_DESCR, STATE, 
         COUNTY, FIPS_CODE, FIPS_NAME, Shape)

fires_small <- clean_names(fires_small)



# Changing some columns to be factors

fires_small <- fires_small %>%
  mutate(nwcg_reporting_agency = as.factor(nwcg_reporting_agency)) %>%
  mutate(stat_cause_code = as.factor(stat_cause_code)) %>%
  mutate(fire_size_class = as.factor(fire_size_class)) %>%
  mutate(owner_descr = as.factor(owner_descr)) %>%
  mutate(state = as.factor(state)) 



# Date is in Julian format, so overwriting with Gregorian format using year and day of year columns.  Also adding in a 'month of year column' for future use.

fires_small <- fires_small %>%
  mutate(date_origin = as.Date(paste0(fire_year, "-01-01"))) %>%
  mutate(discovery_date = as.Date(discovery_doy, origin = date_origin)) %>%
  mutate(discovery_moy = month(discovery_date, label = TRUE)) %>%
  select(-date_origin)
