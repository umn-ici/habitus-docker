FROM alpine

ARG habitus_version="1.0.4"

RUN wget -O /usr/local/bin/habitus https://github.com/cloud66/habitus/releases/download/$habitus_version/habitus_linux_amd64 && \
    chmod +x /usr/local/bin/habitus

ENTRYPOINT ["/usr/local/bin/habitus"]
WORKDIR /build
