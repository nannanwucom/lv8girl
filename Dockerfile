FROM ghcr.io/mchappyfriskyo/lv8girl:docker-env

COPY src/ /var/www/html/

# 设置权限
RUN chown -R www-data:www-data /var/www/html
