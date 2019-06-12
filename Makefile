


CC = pdflatex
SRC = *.tex
OUT_DIR=tmp
CFLAGS= -output-directory $(OUT_DIR)

all: toc
	@$(CC) $(CFLAGS) $(SRC) > /dev/null
	@mv $(OUT_DIR)/*.pdf .

toc: tmp_dir
	@latex $(CFLAGS) $(SRC) > /dev/null

clean:
	@$(RM) -r $(OUT_DIR)/
	@$(RM) *.log *.pdf *.aux *.dvi *.toc *.out

tmp_dir:
	@mkdir -p $(OUT_DIR)/
