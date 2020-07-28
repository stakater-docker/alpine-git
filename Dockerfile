FROM alpine
RUN apk add --update \
        git \
        bash \
        curl \
    && rm -rf /var/cache/apk/*
RUN apk add --no-cache ca-certificates && \
    update-ca-certificates
CMD ["sh", "-c", "tail -f /dev/null"]
