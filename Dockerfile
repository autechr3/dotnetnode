FROM microsoft/dotnet

## Install Node 
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN sudo apt-get install -y nodejs
