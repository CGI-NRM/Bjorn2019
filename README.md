# Monitoring the swedish bear population using scat samples
This repo is a map showing the analysis status for bear monitoring in Sweden 2019. The main functionaly is to display the status of the samples arriving at NRM from all the volunteers that collect scat samples and send to us.

If you can read swedish and are interested in knowing more about this project please visit [the project page at the museum of  natural history](https://www.nrm.se/forskningochsamlingar/miljoforskningochovervakning/viltovervakning/brunbjorn.9005856.html).

# What information that can be found here
This small repo holds code to display the samples that have been registered within the project during 2019. As the samples are arriving to the museum the meta-data are imported into the database [rovbase](https://rovbase.se) and the actual scat samples are being processed for extraction of DNA and genotyping. All imported samples that are registered to rovbase are imported and shown at the map together with its unique id, sample date and colored accordingly to the following criteria.

* Black: the sample is registered at rovbase and has arrived at NRM
* Yellow: DNA have been extracted and the samples are ready to be genotyped
* Grey: the genotyping has failed. This can be due to two main reasons, either the collected scat is not from bear or the DNA in the scat sample is too degraded for genotyping.
* Green: the sample contains DNA from bear have succesfully been genotyped.

In addition there is a small summary of the project progress so far. Note that this map is not meant to be used for anything but the progress of the project and if you are truly interested in the carnivores of sweden do use rovbase as a source for information.

# The actual code
The map is generated using R and the flexdashboard framework. Since rovbase stores gps coordinates in SWEREF99 format there is also some code to convert these to WGS84 for easy plotting. In addition there is also a short script that are used to push up new data from daily digestions of the information at rovbase.
