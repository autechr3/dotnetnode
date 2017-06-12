FROM microsoft/dotnet

RUN apt-get purge --auto-remove nodejs npm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
RUN nvm install node
RUN nvm use node
