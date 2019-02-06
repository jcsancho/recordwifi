# script that runs always to record the day I am in TAG 

wait=3600 # 7200= 2 hours

while [ 1 ]
do

sleep $wait

DATE=`date +%Y-%m-%d`
tag=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s | grep TAG `
#ncount=`wc $tag`
#echo $tag
#echo $ncount
if [ -n "$tag" ]
   then	
     echo "$DATE TAG " >> ~/Documents/tag_records/records.txt  	
     echo "$DATE TAG "
    
   else
     echo "$DATE somewhere"	>> ~/Documents/tag_records/records.txt 
     echo "$DATE somewhere" 
fi

echo "sleeping $wait"

done

