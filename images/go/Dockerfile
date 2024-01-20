# Start from the base image you created for VSCode
FROM vscode:latest

USER root

# Download and Install Go
RUN wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz \
    && rm go1.21.6.linux-amd64.tar.gz

USER vscodeuser

# Set up the Go environment
ENV GOPATH /home/vscodeuser/go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# The command to run VSCode
CMD ["code", "--no-sandbox", "--wait", "--verbose"]
