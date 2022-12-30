# Crear llave
```
    head -c 16 /dev/urandom | xxd -ps
```
# Variables de entorno
```
    PROXY_SECRET=
    PORT_EST=
    PORT=
```
# ...

- Generate the link with following schema: tg://proxy?server=SERVER_NAME&port=PORT&secret=SECRET (or let the official bot generate it for you).
- Register your proxy with @MTProxybot on Telegram.
- Set received tag with arguments: -P <proxy tag>
- Enjoy.

