FROM chesszebra/node:8.5

# Run as root
USER root

# Install grunt
RUN npm install -g grunt-cli

# Run as node
USER node

ENTRYPOINT ["grunt"]
