#!/bin/bash
set -e
rm -rf build gb-studio

# Compile GB Studio
git clone https://github.com/chrismaltby/gb-studio
cd gb-studio
git checkout v4.1.3
corepack yarn

# Export project
npm run start:cli make:web ../shmup-test.gbsproj ../build/web/

# Clean up
cd ..
rm -rf gb-studio
