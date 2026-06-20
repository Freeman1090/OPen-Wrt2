#!/bin/bash
#=================================================
# DIYpart2.sh
#=================================================
# Удаляем конфликтующие драйверы из QModem
rm -rf feeds/qmodem/driver/quectel_QMI_WWAN
rm -rf feeds/qmodem/driver/fibocom_QMI_WWAN
rm -rf feeds/qmodem/driver/simcom_QMI_WWAN

# Права на скрипты (если папка files уже создана в репозитории)
chmod +x $GITHUB_WORKSPACE/files/usr/bin/modem-init.sh 2>/dev/null || true
chmod +x $GITHUB_WORKSPACE/files/etc/init.d/modem-init 2>/dev/null || true
