all: main.pdf #qa-main.pdf

main.pdf: main.tex
	pdflatex -output-directory=./build/ main.tex
#qa-main.pdf: qa-main.tex
#	pdflatex -output-directory=./build/ qa-main.tex

clean:
	rm -f main.aux main.log main.pdf

