user = $(shell id --user):$(shell id --group)
hslfile = release/$(number)_$(name).hsl

python2 = docker run --user ${user} --volume "$(shell pwd):/hsl/projects/$(name)" --workdir /hsl lindra/gira /usr/bin/python2


.PHONY: clean default

default: $(hslfile)

$(hslfile): config.xml src/*.py
	$(python2) generator.pyc "$(name)"

$(hslfile).zip: $(hslfile)
	zip "$@" "$^"

clean:
	rm -f "$(hslfile)"


