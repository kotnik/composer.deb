VERSION=1.0.0-alpha9

default: composer

composer: clean
	@curl -sS https://getcomposer.org/installer | php -- --version=$(VERSION)$
	@cp --remove-destination composer.phar debian/usr/bin/composer

install:
	install -d $(DESTDIR)/usr/bin

clean:
	@rm -f composer.phar

.PHONY: default
