

dirNum=1

while [ $dirNum -lt 10 ] ; do

	cd "devopsshared_0"$dirNum
	zip "devopsshared_0"$dirNum "devopsshared_0"$dirNum"_file"[1,3,5]".txt"
	cd ..
	mv "devopsshared_0"$dirNum"/devopsshared_0"$dirNum".zip" "devopsshared_backup/devopsshared_0"$dirNum".zip"
	dirNum=$((dirNum + 1))

done

now=$(date +%F)
backupfile="devopsshared_backup_"$now

zip $backupfile "devopsshared_backup"
mv $backupfile".zip" "devopsshared_backup/"$backupfile".zip"