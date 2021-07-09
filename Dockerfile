FROM TERMUX
LABEL MAINTAINER=""

WORKDIR ROUX/
ADD . /ROUX

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./ROUX.sh"]
