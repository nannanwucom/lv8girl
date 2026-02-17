#!/bin/bash
# 只调整 uploads 目录及其子文件
if [ -d /var/www/html/uploads ]; then
    chown -R root:www-data /var/www/html/uploads
    chmod -R g+w /var/www/html/uploads
fi

# 启动 PHP-FPM
php-fpm -D

# 启动 Nginx 前台运行
nginx -g "daemon off;"
