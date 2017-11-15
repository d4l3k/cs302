
MDS = $(shell find */ -name "*.md")
PDFS = $(patsubst %.md,%.pdf,$(MDS))

MS = $(shell find */ -name "*.m")
PDFS += $(patsubst %.m,%.pdf,$(MS))

all: $(PDFS)

%.pdf: %.md
	- cd `dirname $<` && pandoc --pdf-engine xelatex --include-in-header=../../config-files/rice.tex -o `basename $@` `basename $<`

%.pdf: %.m
	- cd `dirname $<` && nvim -c "hardcopy > `basename $< .m`.ps" -c quit `basename $<` && ps2pdf `basename $< .m`.ps && rm `basename $< .m`.ps

ASGN1_PDFS = $(shell find asgn1 -name "*.pdf" | sort)
asgn1.pdf: $(ASGN1_PDFS)
	pdfunite $(ASGN1_PDFS) asgn1.pdf

ASGN2_PDFS = $(shell find asgn2 -name "*.pdf" | sort)
asgn2.pdf: $(ASGN2_PDFS)
	pdfunite $(ASGN2_PDFS) asgn2.pdf

ASGN3_PDFS = $(shell find asgn3 -name "*.pdf" | sort)
asgn3.pdf: $(ASGN3_PDFS)
	pdfunite $(ASGN3_PDFS) asgn3.pdf

ASGN4_PDFS = $(shell find asgn4 -name "*.pdf" | sort)
asgn4.pdf: $(ASGN4_PDFS)
	pdfunite $(ASGN4_PDFS) asgn4.pdf

NOTE_PDFS = $(shell find notes -name "*.pdf" | sort)
notes.pdf: $(NOTE_PDFS)
	pdfunite $(NOTE_PDFS) notes.pdf

clean:
	- rm $(PDFS)

.PHONY: clean all

