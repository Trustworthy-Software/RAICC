while read sha
do
	echo "Downloading $sha..."
	./download_app.sh $sha &> /dev/null
	./launch_raicc.sh $sha.apk
	if [ -f "$sha.apk" ] 
	then
		rm raicc_output/*.csv
		./launch_epicc.sh raicc_output/$sha.apk
		rm $sha.apk
	fi
done < /home/raicc/git/RAICC/artefacts/hashes/epicc_benign_1000_section_V_D_3.txt
