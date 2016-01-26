OUT  := build
TUM := tum
TUMPAPER := tum_paper

pdf:
	latexmk -outdir=$(OUT) -pdf $(TUMPAPER)
	cp $(OUT)/$(TUMPAPER).pdf $(TUMPAPER).pdf
	latexmk -outdir=$(OUT) -pdf $(TUM)
	cp $(OUT)/$(TUM).pdf $(TUM).pdf		
	open $(TUMPAPER).pdf

paper:
	latexmk -outdir=$(OUT) -pdf $(TUMPAPER)
	cp $(OUT)/$(TUMPAPER).pdf $(TUMPAPER).pdf
	open $(TUMPAPER).pdf

clean:
	rm -rf $(wildcard $(OUT)/*)

purge:
	rm -rf $(OUT)

.PHONY: latexmk paper clean purge