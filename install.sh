#!/bin/bash
git submodule init
git submodule update
cd prosthetic/
npm install
cd ..
npm install
echo -e "{ \"type\": \"style\", \"rel\":\"stylesheet\",\"url\":\"./styles/all.css\"}" >> prosthetic/ops/own-css.json

