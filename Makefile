OUTPUT = main.pdf
SOURCE = main.tex
LOG_DIR = ./logs

$(OUTPUT): $(SOURCE)
	mkdir -p $(LOG_DIR)
	pdflatex -output-directory=$(LOG_DIR) $(SOURCE)
	mv $(LOG_DIR)/$(OUTPUT) .

clean:
	rm -f $(LOG_DIR)/*.pdf $(LOG_DIR)/*.log $(LOG_DIR)/*.aux $(OUTPUT)
