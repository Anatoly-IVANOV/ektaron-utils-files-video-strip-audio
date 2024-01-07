# Ektaron’s Utils – Video File Audio Stripper

A straightforward Bash script to strip all audio and metadata from any video file without transcoding, preserving the original video quality and codec. This utility is particularly useful for film/video professionals and enthusiasts who need to create video-only versions of their files quickly and reliably.

## Features

- **Efficient Processing:** Strips audio and metadata without re-encoding the video.
- **Broad Compatibility:** Works with major video file formats, including MP4, MOV, MKV, etc.
- **Ease of Use:** Simply drag-and-drop the video file when running the script.

## Requirements

- FFmpeg: The script relies on FFmpeg, a powerful multimedia framework. Ensure you have FFmpeg installed on your system. You can download it from [FFmpeg Official Site](https://ffmpeg.org/).

## Usage

To use the script:

1. Ensure FFmpeg is installed on your system.
2. Download the `ektaron_utils_file_video_strip_audio.sh` script.
3. Make the script executable:
   ```bash
   chmod +x strip_audio.sh
   ```
4. Run the script with the path to the video file as an argument. For example:
   ```bash
   ./strip_audio.sh /path/to/your/file.mp4
   ```

The script will create a new file in the same location as the input file, appending `- no audio` to the filename, while preserving the original file extension.

5. Additionally, you may want to add an alias to your `.bash_profile` for ease of invocation:
   ```bash
   alias ektaronUtilsFilesVideoStripAudio="./strip_audio.sh"
   ```

## License and Contributing

Licensed under the same terms as FFmpeg (GNU Lesser General Public License (LGPL) version 2.1).

Contributions are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

## History

This script was developed by [Anatoly Ivanov](http://anatolyivanov.com), a co-founder of [Ektaron](https://ektaron.com), for our internal needs.
