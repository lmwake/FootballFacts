NR2=1 
while [ $NR2 -lt 92 ] 
do	
TEAMNAME=$(awk -v d=$NR2 -v j=1 'FNR == d {print $j}' FL92.txt)
echo "Year formed:" > $TEAMNAME.md
echo "Name of ground:" >> $TEAMNAME.md
echo "Most famous player:" >> $TEAMNAME.md
echo "Strangest fact:" >> $TEAMNAME.md
NR2=$[$NR2+1]
echo $TEAMNAME
done
