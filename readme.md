# VSCode in Docker

This repository contains Dockerfiles and scripts for setting up Visual Studio Code (VSCode) in Docker environments, tailored for different development needs.

## Structure

### `images` Directory

This directory contains Dockerfiles for creating the following images:

- `vscode-base`: A base Docker image with VSCode installed.
- `vscode-go`: An image that extends `vscode-base` by adding a Go development environment.
- `vscode-ext-devel`: An image that adds a VSCode extension development environment, including Node.js and tools for extension development.

The `build.sh` script in this directory can be used to build these Docker images. The last part of this script uploads the images to DockerHub. Modify this section of the script according to your DockerHub account details before running it.

### `examples` Directory

This directory provides example scripts for running VSCode in Docker under different configurations:

- `vscode`
- `go`
- `ext-devel`

Each subdirectory contains the following scripts:

- `run.sh`: Script to run the VSCode environment.
- `init.sh`: Initial setup script for creating directories.
- `clear.sh`: Clears all data in the environment, including the home directory and Documents. Use this only if you encounter problems with the container. Note that executing this script will remove the `./Documents` folder.
- `clear-config.sh`: Resets the environment to a fresh state but retains the Documents directory.
- `.gitignore`: Git ignore file specific to the environment.

These scripts have been tested on Ubuntu LTS.

## Usage

To use these environments:

1. Navigate to the desired environment directory under `examples`.
2. Execute `init.sh` to perform initial setup.
3. Run `run.sh` to start the VSCode environment.
4. Use `clear-config.sh` to return to a fresh state while keeping Documents.
5. Use `clear.sh` only if you encounter issues with folder permissions.

## License

This project is licensed under the terms of the [MIT License](./LICENSE).
