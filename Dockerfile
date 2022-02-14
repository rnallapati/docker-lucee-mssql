FROM lucee/lucee:5.3-nginx

ENV LUCEE_PASSWORD luceeadminpasswordshhhhhh

# NGINX configs
COPY config/nginx/ /etc/nginx/
# Lucee configs
COPY config/lucee/ /opt/lucee/server/lucee-server/context/

RUN echo ${LUCEE_PASSWORD} > /opt/lucee/server/lucee-server/context/password.txt