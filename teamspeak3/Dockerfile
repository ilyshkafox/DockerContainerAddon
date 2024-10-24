ARG BUILD_FROM
FROM $BUILD_FROM

COPY run.sh /
RUN chmod a+x /run.sh
COPY override/functions.sh /teamspeak/sh/functions.sh

ENTRYPOINT [ "/run.sh" ]