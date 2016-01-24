#!/bin/bash
curl -s http://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss > apod.txt
line=$(grep "enclosure url=" apod.txt | head -1)
echo $line

if [ ! -z "$line" ] 
then
	url="`echo $line | awk -F'[\"]' '{print $2}'`"
	echo $url
	curl $url > apod.jpg
	gsettings set org.gnome.desktop.background picture-uri "file://$PWD/apod.jpg"
else 
		echo "Line is empty"
fi
