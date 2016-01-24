# APOD

  APOD stands for Astronomy Picture of the Day, which is provided by NASA.  
  To learn more about APOD, go [here](http://apod.nasa.gov/apod/lib/about_apod.html)

  The APOD shell script downloads the Astronomy Picture of the Day and sets it as your Desktop background.  

  ### Environment
  This was written for and tested on Ubuntu.

  ### Uses
  This shell script is meant to be used in the terminal or run as a cronjob.

  To run this command immediately, run it in your terminal:
```
apod.sh
```  

  To set it to run every day at 8PM, add this line to your crontab, changing the path name to where apod.sh is located:
```
00 20 * * * /home/username/bin/apod.sh
```
