#!/bin/bash
default_env=$(jq -r '.default_env' "$env_vars_file") 
default_domain=$(jq -r '.default_domain' "$env_vars_file") 
rg=$(jq -r '.RG' "$env_vars_file")
rp=$(jq -r '.RP' "$env_vars_file")
fqdn= "*.${default_domain}"
echo "Running Python script..."

echo "Running Python script with default_env: $default_env, default_domain: $default_domain, RG: $rg, RP: $rp, and fqdn: $fqdn"
python "${GITHUB_WORKSPACE}/scripts/certbot/hello.py"

