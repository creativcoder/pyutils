#! /bin/bash
# Author : Rahul Sharma

declare REPO
echo "Enter the repo name to create"
read REPO
curl -u "<username>:<auth_key>" https://api.github.com/user/repos -d '{"name":"'${REPO}'"}'
echo "created ${REPO} successfully"
