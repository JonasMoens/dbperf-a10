#! /usr/bin/sh
#
#This script will execute query5 multiple (40) times.

i=1
echo "real" >> /vagrant/uitvoer/UitvoerQuery5.csv
while [ $i -le 40 ]
do
( /usr/bin/time -f "%e" mysql -udbo -pdbo dbo < /vagrant/queries/query5.sql > /dev/null ) 2>> /vagrant/uitvoer/UitvoerQuery5.csv
i=$[$i+1]
done
