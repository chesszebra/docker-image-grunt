FROM chesszebra/node:8.5

# Run as root
USER root

# Install Ruby
RUN apt-get update \
 && apt-get install -y ruby-full

# Install SASS
RUN gem install sass --no-user-install

# Install grunt
RUN npm install -g grunt-cli

# Install Tini
ENV TINI_VERSION v0.17.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /sbin/tini
RUN chmod +x /sbin/tini

# Add the entry point script
ADD usr/local/bin/docker-image-entrypoint.sh /usr/local/bin/docker-image-entrypoint

# Make it executable
RUN chmod +x /usr/local/bin/docker-image-entrypoint

# Run as node
USER node

# Execute the entry point
ENTRYPOINT ["/usr/local/bin/docker-image-entrypoint"]

# The default command to execute
CMD ["grunt"]
