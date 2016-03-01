FROM praekeltfoundation/vxsandbox
MAINTAINER Praekelt Foundation <dev@praekeltfoundation.org>

# Install nodejs dependencies
RUN apt-get-install.sh npm
RUN npm install moment url querystring crypto lodash q jed vumigo_v01 vumigo_v02 go-jsbox-location go-jsbox-metrics-helper go-jsbox-ona go-jsbox-xform
COPY . /app
WORKDIR /app
RUN npm install .

ENTRYPOINT ["./jsbox-app-entrypoint.sh"]

CMD []
