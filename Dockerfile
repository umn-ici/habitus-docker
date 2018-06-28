FROM alpine

ARG habitus_version="1.0.3"

# Very Secure
RUN wget -O /usr/local/bin/habitus https://github.com/cloud66/habitus/releases/download/$habitus_version/habitus_linux_amd64 && \
    wget -O - https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar -xz && \
    mv /docker/docker /usr/local/bin/docker && \
    rm -r /docker && \
    chmod +x /usr/local/bin/habitus /usr/local/bin/docker
