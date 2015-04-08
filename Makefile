
default: composer

composer: clean
	@curl -sS https://getcomposer.org/installer | php --
	@cp --remove-destination composer.phar debian/usr/bin/composer

install:
	install -d $(DESTDIR)/usr/bin

clean:
	@rm -f composer.phar

.PHONY: default
