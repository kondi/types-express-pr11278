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

# patch @types/express-serve-static-core
curl https://raw.githubusercontent.com/kondi/DefinitelyTyped/patch-1/express-serve-static-core/index.d.ts \
	> 'project1/node_modules/@types/express-serve-static-core/index.d.ts'
curl https://raw.githubusercontent.com/kondi/DefinitelyTyped/patch-1/express-serve-static-core/index.d.ts \
	> 'project2/node_modules/@types/express-serve-static-core/index.d.ts'

# build
cd project1
npm run build
cd ../project2
npm run build
cd ..
