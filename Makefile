number = 12345
name = DIRNAME

include docker-setup.mk

release/$(hslfile): config.xml src/*.py
        $(python2) generator.pyc $(name)

clean:
	rm -f release/$(hslfile)
