#!/bin/bash
# ==========================================
echo -e "Restarting All Service Please Wait..."
sleep 15
systemctl stop ws-tls 
pkill python
systemctl stop sslh
systemctl daemon-reload
systemctl disable ws-tls
systemctl disable sslh
systemctl disable squid
systemctl daemon-reload
systemctl enable sslh
systemctl enable squid
systemctl enable ws-tls
systemctl start sslh 
systemctl start squid
/etc/init.d/sslh start 
/etc/init.d/sslh restart 
systemctl start ws-tls
systemctl restart ws-tls
sleep 15
restart
