source := .
output := output

PANDOCFLAGS =                        \
	--table-of-contents                \
  --number-sections               \
  --pdf-engine=tectonic              \
  --from=markdown                    \
  --indented-code-classes=javascript \
  --highlight-style=monochrome       \
  -V mainfont="Futura"               \
  -V monofont="PT Mono"               \
  -V documentclass=report            \
  -V papersize=A5                    \
	-V geometry:a4paper \
  -V geometry:margin=1in

sources := $(wildcard $(source)/*.md)

all: output/knowledge.pdf

print:
	echo $(sources)

$(output)/knowledge.pdf: $(sources)
	pandoc $^ -o $@ title.txt $(PANDOCFLAGS)

.PHONY: clean

clean:
	rm -rf $(output)/*
