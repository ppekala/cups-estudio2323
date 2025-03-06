DESTDIR=
FILTERDIR=$(DESTDIR)$(PREFIX)/lib/cups/filter
PPDDIR=$(DESTDIR)$(PREFIX)/share/ppd
PREFIX=/usr

install:
	./install-deps.sh
	install -o root -g root -d $(FILTERDIR)
	install -o root -g root -m 755 pstoestudio $(FILTERDIR)
	install -o root -g root -d $(PPDDIR)
	install -o root -g root -m 644 Toshiba_e-STUDIO2323.ppd $(PPDDIR)

uninstall:
	rm $(FILTERDIR)/pstoestudio
	rm $(PPDDIR)/Toshiba_e-STUDIO2323.ppd

update:
	@install -Cv -o root -g root -m 755 pstoestudio $(FILTERDIR)
	@install -Cv -o root -g root -m 644 Toshiba_e-STUDIO2323.ppd $(PPDDIR)
