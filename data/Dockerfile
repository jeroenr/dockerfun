
FROM busybox

ADD ./search-stats /var/lib/oxyme

RUN mkdir -p /var/lib/oxyme && chmod -R 777 /var/lib/oxyme && chown -R 1000:1000 /var/lib/oxyme

VOLUME ["/var/lib/oxyme"]

CMD /bin/sh
