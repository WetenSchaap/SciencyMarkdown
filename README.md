# SciencyMarkdown

## What?

This repo is the template I use for writing stuff where I want to keep track of things using a serious version control system (meaning git of course). Especially academic papers have a tendency to evolve in complex ways, removing and re-instating section, making git useful to keep track.

## Why Markdown (and not LaTex, Word, whatever)

In this repo I use [`Markdown`](https://www.markdownguide.org/) to write stuff, which can then be converted to whatever required file format (`LaTex`, `Word`, everything!) using [`pandoc`](https://pandoc.org/). Markdown does not have a "What you see is what you get" approach (like `Word` or `LibreOffice`), but is written in a simple text file, letting all the formatting to be handled to some other program. In fact, this text is written in Markdown. The benefit is manyfold, but the main advantages are:

1. You can focus on content, and cannot be distracted by silly formatting issues like jumping images or weird fonts.
2. You can keep track of each textual change using git, so you can stop naming your files `document_v14.2B_final_really.docx` or something to that effect.

So why not the (more conventional) `LaTeX` language? Well, put simply, Latex is *NEVER* easy. You will always end up with long searches for unclear errors, leading to ancient Tex Stackexchange answers, that turn out to be the result of tiny syntax errors. People will tell you that you just need to learn, but as you dive deeper, problems just become harder: `Miktex`, `texlive`, `sharelatex`, `Lyx`, `LuaLaTex`, and that is really just the tip of the iceberg. On top of that, you can *STILL* spend ours on silly formatting issues.

Don't get me wrong, LaTex has its strengths, and if you want to write a beautiful PhD thesis, please use it! But if you want to focus purely on content, it is simply not the right tool in my opinion. Markdown is simple, easy and makes it impossible to get distracted by formatting. And to make everything better, `pandoc` allows you to turn a Markdown document into basically any other type of document, like `.docx`, `.pdf`, `html`, and even compilable texfiles.

## How to prepare

To get started, we need to install some things:

- Get [`pandoc`](https://pandoc.org/), install however you like. I like [Homebrew](https://brew.sh/).
- Get [`pandoc-crossref`](https://github.com/lierdakil/pandoc-crossref/). Again, I like Homebrew.
- To be able to create pdf- and texfiles, you need to install LaTeX (see [here](https://latex-tutorial.com/installation/))

## How to use

1. Write your document in markdown, using the `example.md` file in this repository as a reference. Maybe start easy before you start playing with references and the like.
2. Download this repository to a folder, and place your markdown file in it.
3. Edit `Makefile` to have the correct paths to your own Markdown file, bibliography, etc.
4. In your terminal, navigate to the root folder of the repository.
5. Run the command `make <FILEFORMAT>` to create a file based on the markdown. Currently, supported are:
   - `latex`: Create latex content (paste in your bigger Latex file yourself)
   - `latexfull`: Generates a full Latex document you can edit further to get formatting, etc. correct.
   - `pdf`: Generate a pdf directly
   - `odt`: Generate an odt file (LibreOffice 'Word' file)
   - `docx`: Generate a docx Word file.
   - `html`: Generate a html webpage.
   - `epub`: Generate an epub file for ebooks.
6. Rejoice.
