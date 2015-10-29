PDFLATEX = pdflatex
OBJS = note-hashtag-manual.pdf note-hashtag-proposal.pdf

.PHONY: all
all: $(OBJS)

.PHONY: manual
manual: note-hashtag-manual.pdf
note-hashtag-manual.pdf: note-hashtag-manual.tex note-hashtag.pdf
	$(PDFLATEX) $<
	$(PDFLATEX) $< # Run twice to get TOC links right

.PHONY: proposal
proposal: note-hashtag-proposal.pdf
note-hashtag-proposal.pdf: note-hashtag-proposal.tex note-hashtag.pdf
	$(PDFLATEX) $<

.PHONY: clean
clean:
	rm -f $(OBJS) *.aux *.log *.toc *.out

