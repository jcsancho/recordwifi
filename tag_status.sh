
awk -v BINMODE=rw '!($0 in a){a[$0];print}'  ~/Documents/tag_records/records.txt | grep TAG
#cat  ~/Documents/tag_records/records.txt 

