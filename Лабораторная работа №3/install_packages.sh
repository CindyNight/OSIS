#!/bin/bash

# Скрипт автоматической установки пакетов
PACKAGES="vim curl net-tools apache2"

echo "Обновление списков пакетов..."
sudo apt update

echo "Установка пакетов: $PACKAGES"
sudo apt install -y $PACKAGES

echo "Проверка установленных пакетов:"
for pkg in $PACKAGES; do
    if dpkg -l | grep -q "^ii  $pkg "; then
        echo "  ✓ $pkg установлен"
    else
        echo "  ✗ $pkg НЕ установлен"
    fi
done

echo "Готово!"
