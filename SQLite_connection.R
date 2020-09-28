
library(RSQLite)
library(tidyverse)



# Place "FPA_FOD_20170508.sqlite" file in the raw_data/ folder




# Connecting to the SQLite database
conn <- dbConnect(SQLite(), "raw_data/FPA_FOD_20170508.sqlite")

# Getting list of available data
as.data.frame(dbListTables(conn))

# Extract the fires dataset
fires <- tbl(conn, "Fires") %>% collect()

# EPSG worldwide geodetic parameter dataset system
spatial_ref <- tbl(conn, "spatial_ref_sys_all") %>% collect()

# National Wildfire Coordinating Group unit abbreviations 
NWGG <- tbl(conn, "NWCG_UnitIDActive_20170109") %>% collect()

# Disconnect
dbDisconnect(conn)

# Saving as CSV
write_csv("fires.csv", "clean_data/")
