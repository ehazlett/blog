FROM nginx:latest
MAINTAINER Evan Hazlett "<ejhazlett@gmail.com>"
COPY content/public /tmp/public
RUN cp -rf /tmp/public/* /usr/share/nginx/html/
