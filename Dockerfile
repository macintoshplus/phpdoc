FROM macintoshplus/php:php56
MAINTAINER Jean-Baptiste Nahan <jean-baptiste@nahan.fr>

RUN apt-get install -y graphviz

RUN wget -nv -O /usr/local/bin/phpdoc http://www.phpdoc.org/phpDocumentor.phar \
  && chmod +x /usr/local/bin/phpdoc

VOLUME ["/src", "/output"]

WORKDIR /src

ENTRYPOINT ["/usr/local/bin/phpdoc", "--directory", "/src", "--target", "/output"]
