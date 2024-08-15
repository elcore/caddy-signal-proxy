FROM caddy:2.8.4-builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-l4@94cd39994f7dcd4f5ea10a6581aa624db7e08195

FROM caddy:2.8.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
