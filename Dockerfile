FROM ireinhart/nightwatch

ENV JWTKEY HVCRYEOmR2TZwVKpU8wgEhGTOMjomAZ0

WORKDIR /opt
ADD package.json /opt/package.json
RUN npm install

ADD helpers /opt/helpers
ADD tests /opt/tests

ADD nightwatch-qa.json /opt/nightwatch.json

CMD ["nightwatch"]
