number = 12345
name = DIRNAME
hslfile = $(number)_$(name).hsl

release/$(hslfile): config.xml src/*.py
	docker run --volume $(shell pwd):/hsl/projects/$(name) --workdir /hsl lindra/gira ./generator.pyc $(name)

clean:
	rm -f release/$(hslfile)
