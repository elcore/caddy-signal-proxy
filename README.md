# Signal Proxy using Caddy

# How to run

1. Install Docker
2. Clone this repository
3. Run the following commands

```shell
docker compose build
docker volume create --name=caddy_data
sed -i 's/sub.example.com/sub.my-domain.com/g' config/caddy.json
docker compose up --detach
```
