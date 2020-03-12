FROM alpine
RUN apk add --update \
        git \
        bash \
        curl \
    && rm -rf /var/cache/apk/*
CMD ["/bin/bash"]