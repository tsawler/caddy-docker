from abiosoft/caddy:1.0.0-no-stats

EXPOSE 80
EXPOSE 443

ENV ACME_AGREE=true

ENTRYPOINT ["/bin/parent", "caddy"]
CMD ["--conf", "/Caddyfile", "--log", "stdout", "--agree=$ACME_AGREE"]
