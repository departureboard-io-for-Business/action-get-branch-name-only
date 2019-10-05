#!/bin/sh -l

BRANCH=$(echo ${GITHUB_REF} | sed -e "s/refs\/heads\///g" | sed -e "s/\//-/g")
echo ::set-output name=branch::$BRANCH