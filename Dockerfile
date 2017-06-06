FROM microsoft/dotnet:1.1.0-sdk-projectjson

## Install Node 
RUN wget http://nodejs.org/dist/v6.5.0/node-v6.5.0-linux-x64.tar.gz
RUN tar -C /usr/local --strip-components 1 -xzf node-v6.5.0-linux-x64.tar.gz 
RUN cd $(npm root -g)/npm && npm install fs-extra && sed -i -e s/graceful-fs/fs-extra/ -e s/fs.rename/fs.move/ ./lib/utils/rename.js
