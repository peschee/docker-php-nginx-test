FROM trafex/alpine-nginx-php7:latest

COPY --chown=nobody ./entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh

# This is necessary since setting the entrypoint seems to override the CMD from the parent image
# @see https://github.com/TrafeX/docker-php-nginx/issues/22#issuecomment-616786159
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

ENTRYPOINT ["entrypoint.sh"]