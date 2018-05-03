#! /usr/bin/sh
#
#This script will execute query11 multiple (40) times.

i=1
echo "real" >> /vagrant/uitvoer/Real Execution Time MariaDB/UitvoerQuery11.csv
while [ $i -le 40 ]
do
( /usr/bin/time -f "%e" mysql -udbo -pdbo dbo < /vagrant/queriesMariaDB/query11.sql > /dev/null ) 2>> /vagrant/uitvoer/Real Execution Time MariaDB/UitvoerQuery11.csv
i=$[$i+1]
done
