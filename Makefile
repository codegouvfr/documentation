pdf:
	emacs --script scripts/export.el
	texi2pdf index.texi

md:
	emacs --script scripts/export.el
	cp -r assets/ docs/
	cp -r dsfr/css/extra.css docs/css/
	mv index.md docs/index.md
	cp README.md docs/about.md
	touch mkdocs
	sed -i '1 i\# Documentation' docs/index.md # workaround for dsfr template
	sed -ri 's/^(#+)/\1#/' docs/about.md
	sed -i '1 i\# À propos' docs/about.md
	mkdocs build -d public/

clean:
	rm -f *texi *log *aux *toc *pdf *info *ky *cp *fn *tp *pg *vr *cps
	rm -f index.md
	rm -f preambule.md
	rm -f utiliser.md
	rm -f publier.md
	rm -f contribuer.md
	rm -f faq.md
	rm -f glossaire.md
	rm -r public docs mkdocs
