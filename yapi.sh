#!/bin/sh



reinstall () {
mkdir yapi
cd yapi
git clone https://github.com/YMFE/yapi.git vendors 
cp vendors/config_example.json ./config.json 
cd vendors
npm install --production --registry https://registry.npm.taobao.org
}

init () {
cd /yapi/vendors/server
if [ -f init ];
then
npm run install-server
fi
}


start () {
init
cd /yapi/vendors/server
node app.js
}


$*

