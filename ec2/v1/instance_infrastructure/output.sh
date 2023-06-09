#!/bin/bash
set -e
terraform output -json | jq 'to_entries | map({key:.key, valueString:.value.value})' > output.json
aws proton notify-resource-deployment-status-change --resource-arn ${RESOURCE_ARN} --outputs file://./output.json
