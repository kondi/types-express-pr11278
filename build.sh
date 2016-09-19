#!/bin/sh

# setup npm links
cd project1
npm link
cd ../project2
npm link project1
cd ..

# npm install
cd project1
npm install
cd ../project2
npm install
cd ..

# build
cd project1
npm run build
cd ../project2
npm run build
cd ..
