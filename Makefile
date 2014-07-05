
ALL : OpenLetterToRonPaulSupporters.epub OpenLetterToRonPaulSupporters.mobi OpenLetterToRonPaulSupporters.pdf OpenLetterToRonPaulSupporters.md

OpenLetterToRonPaulSupporters.epub: 
	rm -f OpenLetterToRonPaulSupporters.epub
	zip -X0 OpenLetterToRonPaulSupporters.epub mimetype
	zip -Xur9D OpenLetterToRonPaulSupporters.epub META-INF/* OEBPS/*

OpenLetterToRonPaulSupporters.mobi: OpenLetterToRonPaulSupporters.epub
	rm -f OpenLetterToRonPaulSupporters.mobi
	ebook-convert OpenLetterToRonPaulSupporters.epub OpenLetterToRonPaulSupporters.mobi

OpenLetterToRonPaulSupporters.pdf: OpenLetterToRonPaulSupporters.epub
	rm -f OpenLetterToRonPaulSupporters.pdf
	ebook-convert OpenLetterToRonPaulSupporters.epub OpenLetterToRonPaulSupporters.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

OpenLetterToRonPaulSupporters.md: OpenLetterToRonPaulSupporters.epub
	rm -f OpenLetterToRonPaulSupporters.md
	ebook-convert OpenLetterToRonPaulSupporters.epub OpenLetterToRonPaulSupporters.txt --txt-output-formatting=markdown --keep-links --keep-image-references
	cp -f OpenLetterToRonPaulSupporters.txt OpenLetterToRonPaulSupporters.md
	rm -f OpenLetterToRonPaulSupporters.txt
