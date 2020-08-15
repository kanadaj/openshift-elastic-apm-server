From docker.elastic.co/apm/apm-server:7.8.1

USER root

RUN \
    chgrp -R 0 /usr/share/apm-server/ /var/log && \
    chmod -R g=u /usr/share/apm-server/ /var/log

USER apm-server

CMD ["--strict.perms=false","--e"]
