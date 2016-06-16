default: usage

install:
	@ bin/install

update:
	@ bin/update

usage:
	@printf "Usage: make [TARGET]\n\n"
	@printf "Target list :\n\n"
	@printf "	install		Download & install Wordpress\n"
	@printf "	update		Update plugins & theme\n"
