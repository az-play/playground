# hello.py
import json 
import sys
json_object = sys.argv[1]
default_domain = env_vars['default_domain'] 
subscription_id = env_vars['subscription_id'] 
rp = env_vars['RP'] 
default_env = env_vars['default_env']

print("Hello from Python!")

print(f"Running Python script with default_env: {default_env}, default_domain: {default_domain}, RP: {rp}, and subscription_id: {subscription_id}")


