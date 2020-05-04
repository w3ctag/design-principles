.PHONY: all clean
.SUFFIXES: .bs .html

all: index.html

clean:
	rm -f index.html *~

.bs.html:
	bikeshed spec $< $@
