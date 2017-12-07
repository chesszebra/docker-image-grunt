FROM chesszebra/node:9.1

# Run as root
USER root

# Install Ruby
RUN apt-get update \
 && apt-get install -y ruby-full

# Install SASS
RUN gem install sass --no-user-install

# Install grunt
RUN npm install -g grunt-cli

# Run as node
USER node

ENTRYPOINT ["grunt"]
