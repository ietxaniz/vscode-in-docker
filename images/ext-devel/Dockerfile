# Start from the base image you created for VSCode
FROM vscode:latest

USER root

# Download and install the latest LTS version of Node.js
RUN apt update && \
    wget https://nodejs.org/dist/v20.11.0/node-v20.11.0-linux-x64.tar.xz && \
    tar -xJf node-v20.11.0-linux-x64.tar.xz -C /usr/local --strip-components=1 && \
    rm node-v20.11.0-linux-x64.tar.xz

RUN npm install -g yo generator-code

# Switch back to the non-root user
USER vscodeuser

# The command to run VSCode
CMD ["code", "--no-sandbox", "--wait", "--verbose"]
