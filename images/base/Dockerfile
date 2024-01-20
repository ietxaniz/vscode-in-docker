# Use Ubuntu Jammy as the base image
FROM ubuntu:jammy-20240111

# Update package list and install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    software-properties-common \
    apt-transport-https \
    git \
    iputils-ping \
    iproute2 \
    && rm -rf /var/lib/apt/lists/*

# Add the Microsoft repository for VSCode
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg \
    && install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/ \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list

# Install Visual Studio Code
RUN apt-get update && apt-get install -y code

# Create a non-root user
RUN useradd -m vscodeuser
USER vscodeuser

# The command to run VSCode
CMD ["code", "--no-sandbox", "--wait", "--verbose"]
