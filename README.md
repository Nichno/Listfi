# listfi

`listfi` is a simple shell script that searches for a specific word within all files in a directory and its subdirectories. If the word is found, it displays the location. If not, it logs the search term in a log file.

## Features

- Recursively searches through directories and subdirectories.
- Displays the file path where the search term is found.
- Logs a message if the search term is not found in any files.

## Requirements

- Unix-like operating system with a shell (e.g., Linux, macOS).
- `grep` utility (commonly available in Unix-like OS).

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/Nichno/listfi.git
    ```

2. Navigate to the directory:

    ```sh
    cd listfi
    ```

3. Make the script executable:

    ```sh
    chmod +x listfi
    ```

## Usage
