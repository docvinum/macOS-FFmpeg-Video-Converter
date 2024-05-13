
# macOS-FFmpeg-Video-Converter

This repository provides a Quick Action workflow for macOS that utilizes FFmpeg to convert video files from `.mov` to `.mp4`. This solution is designed for users looking to automate video conversions using the native Automator app on macOS with the power and flexibility of FFmpeg.

## Features

- **Simple Integration**: Easy setup using macOS's native Automator application.
- **High Flexibility**: Converts `.mov` files to `.mp4` format, with potential to customize the script for other formats.
- **Notification System**: Utilizes macOS notifications to alert the user upon successful or failed conversions.

## Prerequisites

Before you set up the Quick Action, ensure you have the following installed on your macOS:
- [Homebrew](https://brew.sh/)
- FFmpeg: Install it via Homebrew using the command:
  ```bash
  brew install ffmpeg
  ```

After installation, you can locate the FFmpeg installation folder by running:
  ```bash
  which ffmpeg
  ```

This command will output the path to the FFmpeg executable, typically /usr/local/bin/ffmpeg or /opt/homebrew/bin/ffmpeg on Apple Silicon (M1, M2) Macs.

In the script, change the FFmpeg installation folder location, just after "# Execute ffmpeg conversion"

## Installation

1. **Open Automator** on your Mac.
2. **Create a new document** and choose 'Quick Action'.
3. **Set up the Quick Action**:
   - Workflow receives current 'movie files' in 'any application'.
   - Add a 'Run Shell Script' action.
   - Shell: `/bin/zsh`
   - Pass input: 'as arguments'.
   - Copy and paste the script from the `convert.sh` file in this repository into the Automator script area.

## Usage

To use the Quick Action:
- Right-click on any `.mov` file.
- Navigate to `Quick Actions` and select `Convert to MP4`.
- You will receive a notification once the conversion is either successful or if it fails.

## Customization

You can modify the script in the Automator to handle different formats or to change the output directory. Adjust the FFmpeg command-line arguments as needed for different video or audio codecs.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues to suggest improvements or add new features.

## License

This project is open-sourced under the MIT license. See the `LICENSE` file for more details.

## Acknowledgments

- This workflow utilizes [FFmpeg](https://ffmpeg.org/), a powerful multimedia framework that supports a wide range of video and audio formats.
