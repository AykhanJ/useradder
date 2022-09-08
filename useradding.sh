for i in $(cat ~/users)
do
      
	useradd -d $(echo $i | awk -F ":" '{print $2}') -s $(echo $i | awk -F ":" '{print $3}') $(echo $i |awk -F ":" '{print $1}')
	echo $(echo $i | awk -F ":" '{print $1}'):$(echo $i | awk -F ":" '{print $4}') |chpasswd
done

