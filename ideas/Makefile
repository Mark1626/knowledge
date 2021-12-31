
PDFENGINE=tectonic

PDFS= sqlite-tdigest.pdf

all: $(PDFS)

%.pdf: %.md
	pandoc -o $@ $< --pdf-engine=$(PDFENGINE)

clean:
	@rm $(PDFS)
