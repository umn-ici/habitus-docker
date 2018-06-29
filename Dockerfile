FROM alpine

ARG habitus_version="1.0.3"

RUN wget -O /usr/local/bin/habitus https://github.com/cloud66/habitus/releases/download/$habitus_version/habitus_linux_amd64 && \
    chmod +x /usr/local/bin/habitus

ENTRYPOINT ["/usr/local/bin/habitus"]
WORKDIR /build


# docker run -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/build --network=my-net --name habitus habitus --build host=habitus --binding=0.0.0.0 --port=8080 --secrets=true --network my-net
