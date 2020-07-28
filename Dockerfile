FROM alpine
RUN apk add --update \
        git \
        bash \
        curl \
    && rm -rf /var/cache/apk/*
RUN apk add --no-cache ca-certificates && \
    update-ca-certificates
CMD ["/bin/bash -c while true; do sleep 1000; done]
