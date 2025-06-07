number = 12345
name = DIRNAME
hslfile = $(number)_$(name).hsl
user = $(shell id --user):$(shell id --group)

release/$(hslfile): config.xml src/*.py
        docker run --user ${user} --volume $(shell pwd):/hsl/projects/$(name) --workdir /hsl lindra/gira /usr/bin/python2 generator.pyc $(name)

clean:
	rm -f release/$(hslfile)
