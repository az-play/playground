#!/bin/bash

env_vars_file=$1
config_file=$2

# Display the content of the env_vars.json file
echo "Environment variables file content:"
cat "$env_vars_file"

# Parse JSON to extract values
default_env=$(jq -r '.default_env' "$env_vars_file")
default_domain=$(jq -r '.default_domain' "$env_vars_file")
rg=$(jq -r '.RG' "$env_vars_file")
rp=$(jq -r '.RP' "$env_vars_file")
sub=$(jq -r '.subscription_id' "$env_vars_file")
fqdn="*.$default_domain"


json_object=$(jq -n \ 
    --arg default_env "$default_env" \ 
    --arg default_domain "$default_domain" \ 
    --arg rg "$rg" \ 
    --arg rp "$rp" \ 
    --arg sub "$sub" \ 
    '{default_env: $default_env, default_domain: $default_domain, RG: $rg, RP: $rp, subscription_id: $sub}')

# Display the content of the config file
echo "Config file content:"
cat "$config_file"

# Run the Python script
python "${GITHUB_WORKSPACE}/scripts/certbot/hello.py" "$json_object"


