# Signal Proxy using Caddy (Debug)

# How to run


```shell
docker-compose build
docker volume create --name=caddy_data
sed -i 's/sub.example.com/sub.my-domain.com/g' config/caddy.json
docker-compose up
```
