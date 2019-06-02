from abiosoft/caddy:no-stats

EXPOSE 80
EXPOSE 443

WORKDIR /etc/caddy

COPY Caddyfile Caddyfile

ENTRYPOINT ["/bin/parent", "caddy"]
CMD ["--conf", "/etc/caddy/Caddyfile", "--log", "stdout", "--agree=true"]