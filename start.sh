#!/bin/bash
set -e

# 调整 uploads 目录权限
if [ -d /var/www/html/uploads ]; then
    chown -R root:www-data /var/www/html/uploads
    chmod -R g+w /var/www/html/uploads
fi

# 启动 PHP-FPM 后台模式
php-fpm -D

# 启动 Nginx 前台模式（容器 PID 1）
exec nginx -g "daemon off;"
