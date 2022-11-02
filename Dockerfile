FROM caddy:2.6.2-builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-l4

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
