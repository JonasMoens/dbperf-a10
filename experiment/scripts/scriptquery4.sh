#! /usr/bin/sh
#
#This script will execute query4 multiple (40) times.

i=1
echo "real" >> /vagrant/uitvoer/UitvoerQuery4.csv
while [ $i -le 40 ]
do
( /usr/bin/time -f "%e" mysql -udbo -pdbo dbo < /vagrant/queries/query4.sql > /dev/null ) 2>> /vagrant/uitvoer/UitvoerQuery4.csv
i=$[$i+1]
done
