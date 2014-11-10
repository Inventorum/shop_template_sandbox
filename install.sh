#!/bin/bash
wget http://nodejs.org/dist/v0.10.33/node-v0.10.33-darwin-x64.tar.gz
tar xzf node-v0.10.33-darwin-x64.tar.gz
git submodule init
git submodule update
cd prosthetic/
../node-v0.10.33-darwin-x64/bin/npm install
cd ..
node-v0.10.33-darwin-x64/bin/npm install
echo -e "{ \"type\": \"style\", \"rel\":\"stylesheet\",\"url\":\"./styles/all.css\"}" >> prosthetic/ops/own-css.json

