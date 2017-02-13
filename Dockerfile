FROM node:6.9.5
RUN git clone https://github.com/n1k0/readable-proxy ; cd readable-proxy ; npm install
ADD timeout.patch /timeout.patch
RUN cd readable-proxy ; patch -p0 < /timeout.patch
WORKDIR /readable-proxy
CMD ["npm", "start"]
