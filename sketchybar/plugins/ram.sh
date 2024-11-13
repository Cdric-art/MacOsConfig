#!/bin/bash

# Récupère les informations de la mémoire
pages_free=$(vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
pages_active=$(vm_stat | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
pages_inactive=$(vm_stat | grep "Pages inactive" | awk '{print $3}' | sed 's/\.//')
pages_speculative=$(vm_stat | grep "Pages speculative" | awk '{print $3}' | sed 's/\.//')
page_size=$(vm_stat | grep "page size of" | awk '{print $8}' | sed 's/\.//')

# Calcule la mémoire libre et totale
memory_free=$((($pages_free + $pages_inactive + $pages_speculative) * $page_size / 1024 / 1024))
memory_used=$((($pages_active) * $page_size / 1024 / 1024))
memory_total=$(sysctl -n hw.memsize | awk '{print $1/1024/1024}')

# Calcule l'utilisation de la mémoire en pourcentage
memory_usage_percent=$(printf "%.0f" $(echo "scale=2; ($memory_used / $memory_total) * 100" | bc))

# Affiche l'utilisation en pourcentage
sketchybar --set $NAME label="$memory_usage_percent%"
