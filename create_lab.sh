#!/bin/bash

docker build -t examen_lohp_5_gen .
docker run -d --name examen_lohp_5_gen -it examen_lohp_5_gen /bin/bash
docker exec -it examen_lohp_5_gen /etc/init.d/apache2 restart


ip_address=$(docker container inspect examen_lohp_5_gen | grep -i "ipaddress" | tr ' ' '\n'  | tr -d '",' | grep -E "[0-9]+" | sort -u)

echo "[+] La ip es: $ip_address"

