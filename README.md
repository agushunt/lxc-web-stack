# LXC Web Stack

Proyek ini membuat arsitektur web sederhana menggunakan LXC:

- Nginx (web server)
- PHP-FPM (application server)
- MySQL (database)

## Cara Menjalankan

Install LXD:
```bash
sudo apt install lxd -y
lxd init
# LXC Web Stack

Proyek ini membuat arsitektur web sederhana menggunakan LXC:

- Nginx (web server)
- PHP-FPM (application server)
- MySQL (database)

## Cara Menjalankan

Install LXD:
```bash
sudo apt install lxd -y
lxd init
chmod +x deploy.sh
./deploy.sh

# Container yang Dibuat
- web-nginx
- web-php
- web-db


