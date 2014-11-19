#!/bin/bash
git submodule init
git submodule update
cd prosthetic/
../node-v0.10.33-darwin-x64/bin/npm install
cd ..
node-v0.10.33-darwin-x64/bin/npm install
chmod 755 bin/grunt
echo -e "{ \"type\": \"style\", \"rel\":\"stylesheet\",\"url\":\"./styles/all.css\"}" >> prosthetic/ops/own-css.json

