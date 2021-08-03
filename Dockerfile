
FROM arm32v7/alpine:3.12.3

MAINTAINER p@philliproberts.dev

RUN apk --no-cache add privoxy dansguardian vim
ADD privoxy-start.sh /usr/local/bin/
ADD dansguardian.conf /etc/dansguardian/
ADD config /etc/privoxy/
RUN chmod +r /etc/privoxy/config && chmod +x /usr/local/bin/privoxy-start.sh

CMD ["privoxy-start.sh"]

EXPOSE 8080

