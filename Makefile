pdf:	resume.tex
	latexmk -pdf -xelatex resume.tex
	make clean_tex


clean_tex:
	rm -f *.aux *.fls *.log *.out *_latexmk
clean:
	rm -f resume.pdf

.PHONY: clean_tex clean

