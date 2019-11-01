#!/bin/sh -l

BRANCH=$(echo ${GITHUB_REF} | sed -e "s/refs\/heads\///g" | sed -e "s/\//-/g")
REPO=$(echo ${GITHUB_REPOSITORY} | awk '{print tolower($0)}')
REPOSHORTNAME=$(echo ${GITHUB_REPOSITORY} | awk -F'/' '{print $2}')

echo ::set-output name=repo::$REPO
echo ::set-output name=branch::$BRANCH
echo ::set-output name=reposhortname::$REPOSHORTNAME


