user = $(shell id --user):$(shell id --group)
hslfile = $(number)_$(name).hsl
python2 = docker run --user ${user} --volume $(shell pwd):/hsl/projects/$(name) --workdir /hsl lindra/gira /usr/bin/python2
