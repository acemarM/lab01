#!/bin/bash

echo "[*] A verificar o estado do Firewall e a instalar dependencias de iptables..."
docker exec -it clab-lab01-firewall apk add iptables

echo "[*] A aplicar a regra de mitigacao (DROP de TCP SYN) no Firewall..."
docker exec -it clab-lab01-firewall iptables -A INPUT -p tcp --syn -j DROP

echo "[+] Mitigacao aplicada com sucesso! O firewall esta protegido contra o SYN Flood."
