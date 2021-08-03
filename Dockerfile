
FROM arm32v7/alpine:3.12.3

MAINTAINER p@philliproberts.dev

RUN apk --no-cache add privoxy 
ADD privoxy-start.sh /usr/local/bin/
ADD config /etc/privoxy/
RUN chmod +r /etc/privoxy/config && chmod +x /usr/local/bin/privoxy-start.sh

CMD ["privoxy-start.sh"]

EXPOSE 8118

