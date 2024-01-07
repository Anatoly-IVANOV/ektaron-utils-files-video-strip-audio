#!/bin/bash

# This script was developed by Anatoly IVANOV .com , a co-founder of Ektaron.com
# a film production company based in France, Switzerland and the US



# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo ""
    echo "No path to input file provided! So no idea what file needs its audio stripped."
    echo ""
    echo "* Run again, but drag-n-drop the video file from the Finder.app after a space."
    echo ""
    echo "  EXAMPLE: ektaronUtilsFilesVideoStripAudio /Users/John/Downloads/video.mp4"
    echo ""
    exit 1
fi

# Input file
str_FileInputPath="$1"

# Extract the file extension
str_FileInputExtension="${str_FileInputPath##*.}"

# Extract the file name without the extension
str_FileInputNameWithoutExtension="${str_FileInputPath%.*}"

# Output file with ' - no audio' suffix
str_FileOutputPath="${str_FileInputNameWithoutExtension} - no audio.${str_FileInputExtension}"

# FFmpeg command to strip audio, subtitles, and metadata
ffmpeg -i "$str_FileInputPath" -map 0:v -c:v copy -an -sn -dn "$str_FileOutputPath"

# Echo the output file path
echo ""
echo "Audio stripped. New file saved in the same location as the original."
echo ""
