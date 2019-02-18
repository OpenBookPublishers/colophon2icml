
target: colophon.icml

colophon.md: colophon-template.mustache book-details.json
	mustache book-details.json colophon-template.mustache > $@

colophon.icml: colophon.md
	pandoc $< -s -o $@

clean:
	rm -f -- colophon.md colophon.icml
