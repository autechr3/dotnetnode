FROM microsoft/dotnet

## Install Node 
RUN wget https://nodejs.org/dist/v6.10.3/node-v6.10.3-linux-x64.tar.xz
RUN tar -C /usr/local --strip-components 1 -xzf node-v6.10.3-linux-x64.tar.xz
RUN cd $(npm root -g)/npm && npm install fs-extra && sed -i -e s/graceful-fs/fs-extra/ -e s/fs.rename/fs.move/ ./lib/utils/rename.js
