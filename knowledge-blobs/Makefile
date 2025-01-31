RECFILES = formal.rec

all: formal.json

fix-id: $(RECFILES)
	recfix --auto $<

%.json: %.rec
	rec2csv $< | python -c 'import csv,json,sys;print(json.dumps(list(csv.DictReader(sys.stdin)), indent=4))' > $@

clean:
	rm -f *.json

.PHONY: clean all fix-id

