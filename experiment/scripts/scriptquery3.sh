#! /usr/bin/sh
#
#This script will execute query3 multiple (40) times.

i=1
echo "real,sys,user" >> /vagrant/uitvoer/UitvoerQuery3.csv
while [ $i -le 40 ]
do
( /usr/bin/time -f "%e,%s,%U" mysql -udbo -pdbo dbo < /vagrant/queries/query3.sql > /dev/null ) 2>> /vagrant/uitvoer/UitvoerQuery3.csv
i=$[$i+1]
done