FROM envoyproxy/envoy-alpine:v1.17.0
COPY envoy.yaml /etc/envoy/envoy.yaml
RUN apk --no-cache add ca-certificates
ENTRYPOINT /usr/local/bin/envoy -c /etc/envoy/envoy.yaml -l trace