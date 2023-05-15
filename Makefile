
generate:
	mkdir -p .cache/texmf-var
	env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
		latexmk -interaction=nonstopmode -pdf -lualatex \
		lsanche.tex

clean:
	rm -r .cache *.aux *.fdb_latexmk *.fls *.log *.pdf
