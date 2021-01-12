while read sha
do
	echo "Downloading $sha..."
	./download_app.sh $sha &> /dev/null
	./launch_epicc.sh $sha.apk
	rm $sha.apk
done < /home/raicc/git/RAICC/artefacts/hashes/epicc_benign_1000_section_V_D_3.txt
