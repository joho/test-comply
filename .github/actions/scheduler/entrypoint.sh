#!/bin/bash

cd $GITHUB_WORKSPACE

if [ -n "$INPUT_JIRA_USERNAME" ]; then
   sed -i "s/<JIRA_USERNAME>/$INPUT_JIRA_USERNAME/g" comply.yml
fi

if [ -n "$INPUT_JIRA_PASSWORD" ]; then
   sed -i "s/<JIRA_PASSWORD>/$INPUT_JIRA_PASSWORD/g" comply.yml
fi

comply scheduler