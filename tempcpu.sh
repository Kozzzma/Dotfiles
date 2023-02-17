#!/bin/sh

tempcpu=$(sensors | grep CPU | awk '{print$2}')

echo "󰏈  $tempcpu | "
