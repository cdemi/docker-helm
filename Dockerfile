FROM alpine
RUN apk add --no-cache curl \
    && curl -o helm.tar.gz -L https://storage.googleapis.com/kubernetes-helm/helm-v2.8.0-rc.1-linux-amd64.tar.gz  \
    && apk del --no-cache curl \
    && tar -zxvf helm.tar.gz \
    && mv linux-amd64/helm /usr/local/bin/helm \
    && rm -rf helm.tar.gz linux-amd64
ENTRYPOINT [ "helm" ]