specs := $(patsubst %.bs,build/%.html,$(wildcard *.bs))
VENV := .venv
bikeshed := $(VENV)/bin/bikeshed

.PHONY: all clean dist-clean
.SUFFIXES: .bs .html

all: $(specs)

clean:
	-rm -rf build *~

dist-clean: clean
	-rm -rf $(VENV)

build:
	mkdir -p build

$(VENV):
	python3 -m venv $(VENV)

$(bikeshed): $(VENV)
	$(VENV)/bin/pip install bikeshed

build/%.html: %.bs build $(bikeshed)
	$(bikeshed) --die-on=fatal spec $< $@
