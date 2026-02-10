#!/bin/bash

set -e

echo "Membuat container web stack..."

containers=("web-nginx" "web-php" "web-db")

for c in "${containers[@]}"; do
    lxc launch ubuntu:22.04 $c
done

echo "Menginstall service..."

lxc exec web-nginx -- bash -c "apt update && apt install -y nginx"
lxc exec web-php -- bash -c "apt update && apt install -y php-fpm"
lxc exec web-db -- bash -c "apt update && apt install -y mysql-server"

echo "Web stack berhasil dibuat."
lxc list

