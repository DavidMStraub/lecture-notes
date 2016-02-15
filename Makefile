name = lecture

main:
	cd include &&	pandoc -S -t latex --template=pandoc-template-latex-straub.tex \
	--latex-engine=xelatex \
	--standalone \
	--biblatex \
	--bibliography=bibliography.bib \
	--chapters --toc --number-sections \
	../$(name).md -o $(name).tex
	cd include && latexmk -f -interaction=nonstopmode -pdf -xelatex $(name).tex
