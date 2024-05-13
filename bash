originalFilePath=$1
uuid=$(uuidgen)
uuidFilePath="${originalFilePath%.*}-$uuid.mp4"

# Execute ffmpeg conversion
/opt/homebrew/bin/ffmpeg -i "$originalFilePath" "$uuidFilePath" > /dev/null 2>&1

# Check if ffmpeg was successful
if [ $? -eq 0 ]; then
    osascript -e 'display notification "Video conversion completed successfully" with title "Conversion Success"'
else
    osascript -e 'display notification "Video conversion failed" with title "Conversion Failure"'
fi
