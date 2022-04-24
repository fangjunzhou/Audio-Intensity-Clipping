for fileName in $(ls)
do
    if [[ $fileName == *.mp3 ]]
    then
        echo "Converting $fileName to ${fileName%%.*}.wav"
        ffmpeg -i $fileName -vn -ar 44100 -ac 2 -b:a 192k ${fileName%%.*}.wav
    fi
done