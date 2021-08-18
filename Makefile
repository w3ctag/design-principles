specs = $(patsubst %.bs,build/%.html,$(wildcard *.bs))

.PHONY: all clean
.SUFFIXES: .bs .html

all: $(specs)

clean:
	rm -rf build *~

build:
	mkdir -p build

build/%.html: %.bs Makefile build
	bikeshed --die-on=fatal spec $< $@
