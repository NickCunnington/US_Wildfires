# Study of Wildfires in the US for the years 1992-2015.


<br>

![Intro](https://github.com/NickCunnington/final_project_nick/blob/master/plots/wildfires.PNG)

<br>

## Aims of the project

During this project I investigated all 1.88 million recorded wildfires that occured in the United States from 1992-2015 in order to examine the causes and explore any correlations that may be present.

<br>

## Technologies used

This project was completed in R using a variety of packages and includes .R and .rmd files in the folder structure.  Also included are a project brief document and a PowerPoint presentation to highlight my findings.  All .rmd files also have been rendered in html for ease of quick viewing.

<br>

## Where to find the Raw Data

The dataset used in this project is in a **.sqlite** database format and is not included in this repo as the file is too big for GitHub.  In order to run these scrips on your machine you will need to download the **FPA_FOD_20170508.sqlite** file and put it into the **
"raw_data"** folder.  The file can be found at <url>https://www.kaggle.com/rtatman/188-million-us-wildfires/download</url>

<br>

## Order to run scripts

For the data to be loaded properly please run the .R and .rmd files in this order.

1) /data_cleaning/SQLite_connection.R
2) /data_cleaning/data_cleaning_scripts.R
3) /analysis/wildfires.Rmd
4) /model_building/linear_regression.Rmd
5) /model_building/SARIMA_model.Rmd


<br>

![SARIMA model of number of fires per year](https://github.com/NickCunnington/final_project_nick/blob/master/plots/model_plots/sarima.png)
