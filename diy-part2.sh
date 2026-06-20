#!/bin/bash
#=================================================
# DIYpart2.sh
#=================================================

# 1. Удаляем конфликтующие драйверы из QModem
rm -rf feeds/qmodem/driver/quectel_QMI_WWAN
rm -rf feeds/qmodem/driver/fibocom_QMI_WWAN
rm -rf feeds/qmodem/driver/simcom_QMI_WWAN

# 2. Выдаем права на скрипты (исправленный путь)
chmod +x files/usr/bin/modem-init.sh 2>/dev/null || true
chmod +x files/etc/init.d/modem-init 2>/dev/null || true
