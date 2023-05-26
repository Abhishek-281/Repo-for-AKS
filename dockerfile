FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y
RUN apt install nginx -y
RUN apt install git -y
RUN git clone https://github.com/codewithsadee/footcap.git
RUN cp -r footcap /var/www/html/
RUN sed -i 's@/var/www/html@/var/www/html/footcap@' /etc/nginx/sites-enabled/default
EXPOSE 8088
CMD ["nginx", "-g", "daemon off;"]
