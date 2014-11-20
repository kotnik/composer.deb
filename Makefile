VERSION=1.0.0-alpha8

default: composer

composer: clean
	@curl -sS https://getcomposer.org/installer | php
	@php composer.phar create-project composer/composer -s alpha php5-composer $(VERSION)$

install:
	install -d $(DESTDIR)/usr/bin
	ln -s /usr/share/php5-composer/bin/composer $(DESTDIR)/usr/bin/composer

clean:
	@rm -rf php5-composer/
	@rm -f composer.phar

.PHONY: default
