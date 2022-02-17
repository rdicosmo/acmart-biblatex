## Development repository for biblatex support for the ACM article class (acmart).

This is a working space to develop proper biblatex support for the ACM article class,
that can be found at https://github.com/borisveytsman/acmart/

### Relevant files

The bibliography style files are the following:

- ACM-Reference-Format.bst : the official ACM BibTeX style
- acmnumeric.*             : biblatex support based on the one shipped with acmart, where it is called ACM-Reference-Format.{bbx,cbx,dbx}, and only supports numeric citation style.
- acmauthoryear.*          : biblatex support for authoryear citation style

### Support files

The software.* and the *.lbx files are part of the biblatex-software package.
They are needed only if you do not have a recent TeXLive distribution.

### Test files
In order to test the biblatex implementations, comparing with the bibtex one, the following files are included:

- main-bibtex.tex        : sample document that uses bibtex for a journal like PACMPL
- main-acmnumeric.tex    : the same document, adapted to use the biblatex support included with the acmart standard distribution, that uses a numeric citation style
- main-acmauthoryear.tex : the same document, adapted to use the new acmauthoryear biblatex style

These files use the samplebody.tex and samble-base.bib files extracted from the official acmart distribution.

### Compiling

Typing **make** will compile all these files, making it easier to see the differences between *the original bibtex version* and *the new biblatex version*.
