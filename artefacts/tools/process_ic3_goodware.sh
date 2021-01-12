while read sha
do
	echo "Downloading $sha..."
	./download_app.sh $sha &> /dev/null
	./launch_ic3.sh -a $sha.apk -p ~/git/android-platforms/ -d cc
done < /home/raicc/git/RAICC/artefacts/hashes/5k_ic3_raicc_benign_section_V_D_1.txt
