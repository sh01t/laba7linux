#!/bin/bash

current_time=$(date +"%T")

current_calendar=$(cal)

notify-send "Текущее время: $current_time" "Календарь на текущий месяц:
$current_calendar"
