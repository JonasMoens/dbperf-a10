#! /usr/bin/sh
#
#This script will execute query10 multiple (40) times.

i=1
echo "real" >> /vagrant/uitvoer/UitvoerQuery10.csv
while [ $i -le 40 ]
do
( /usr/bin/time -f "%e" mysql -udbo -pdbo dbo < /vagrant/queries/query10.sql > /dev/null ) 2>> /vagrant/uitvoer/UitvoerQuery10.csv
i=$[$i+1]
done
