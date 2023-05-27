#!/bin/bash

if ! command -v fswebcam >/dev/null 2>&1; then
  echo "Утилита fswebcam не установлена"
  sudo apt-get update
  sudo apt-get install fswebcam -y
fi

fswebcam

echo "Фото сделано"
