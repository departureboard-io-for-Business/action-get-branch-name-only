#!/bin/sh -l

BRANCH=$(echo ${GITHUB_REF} | sed -e "s/refs\/heads\///g" | sed -e "s/\//-/g")
REPO=$(echo ${GITHUB_REPOSITORY} | awk '{print tolower($0)}')

echo ::set-output name=repo::$REPO
echo ::set-output name=branch::$BRANCH
