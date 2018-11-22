FROM ubuntu:18.04
COPY python1.py /usr/local/bin/
COPY python2.py /usr/local/bin/
RUN apt-get update && apt-get install -y \
  pylint \
  docker && \
  pylint-3 /usr/local/bin/python1.py /usr/local/bin/python2.py

FROM ubuntu:18.04
COPY python1.py /usr/local/bin/
COPY python2.py /usr/local/bin/
CMD ['/usr/local/bin/python1.py']


