# hello.py
import json 
import sys
import os
# json_object = sys.argv[1]
# default_domain = env_vars['default_domain'] 
# subscription_id = env_vars['subscription_id'] 
# rp = env_vars['RP'] 
# default_env = env_vars['default_env']

print("Hello from Python!")
access-key=os.environ["access-key"]

print(f"Running Python script with default_env: access-key : {access-key}")


