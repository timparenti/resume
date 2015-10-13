DATE=$(shell date +%Y-%m-%d)
TAG=tjp

resume.pdf:	resume.tex
	latexmk -pdf -xelatex resume.tex
	make clean_tex
archive:	resume.pdf
	mkdir -p archive
	cp -a resume.pdf archive/${DATE}_${TAG}_resume.pdf

clean_tex:
	rm -f *.aux *.fls *.log *.out *_latexmk
clean:
	rm -f resume.pdf

.PHONY: archive
.PHONY: clean_tex clean

