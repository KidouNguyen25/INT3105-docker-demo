#!/bin/sh
set -e

echo "===== Docker demo container ====="
echo "Hostname : $(hostname)"
echo "Date     : $(date)"
echo "Uptime   : $(uptime)"
echo ""

echo "--- curl version ---"
curl --version | head -n 1

echo ""
echo "--- jq version ---"
jq --version

echo ""
echo "--- Fetching a sample JSON with curl + jq ---"
curl -sL https://api.github.com/repos/moby/moby | jq '{name, description, stargazers_count}'

echo ""
echo "===== Done ====="
