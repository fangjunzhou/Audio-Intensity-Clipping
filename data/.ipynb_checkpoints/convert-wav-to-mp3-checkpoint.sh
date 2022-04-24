for fileName in $(ls)
do
    if [[ $fileName == *.wav ]]
    then
        echo "Converting $fileName to ${fileName%%.*}.mp3"
        ffmpeg -i $fileName -vn -ar 44100 -ac 2 -b:a 192k ${fileName%%.*}.mp3
    fi
done