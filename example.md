---
# Settings
## General (will end up in metadata)
title: "Example Markdown File"
lang: en-GB
author:
- Piet J.M. Swinkels
- Ano N. Ymous
keywords: [nothing, nothingness]
abstract: |
  This is a random very short abstract
## These are settings for setting up proper internal references to figures and stuff:
### General
codeBlockCaptions: True # not sure why you would want that, but why not.
autoEqnLabels: True     # Automatic numbering for non-inline equations
linkReferences: True    # make references links where possible
### Names of objects when referencing
figureTitle: "Figure"
tableTitle: "Table"
figPrefix: 
  - "Figure"
  - "Figures"
eqnPrefix: 
  - "equation"
  - "equations"
tblPrefix: 
  - "Table"
  - "Tables"
secPrefix: 
  - "section"
  - "Sections"
### Subsections
numberSections: True  # whether to automatically number sections
sectionsDepth: 3      # how deep to auto-number sections.
---
# Introduction {#sec:intro}

This file will contain some Markdown you would typically need while writing a paper. Apart from regular text, that means a bunch of mathematics (obviously), some Figures (with caption), and some references (managed using BibLaTeX). And of course the ability to reference the maths and figures later on using a shorthand.

# Maths {#sec:maths}

Maths in Markdown works pretty simple if we use the correct flags in Pandoc to covert it. Use the `$` symbol to make inline maths, just like in LaTex: $S = \sum_{s=1}^{10} f(s) \cdot \sin \sigma^2$. If you want to do serious maths, and inline maths will just not do, you can use double `$$`. Multiple lines have to be split over multiple enviroments. You are not allowed to have empty lines between the two symbols! See below for an example:

$$
  S = \sum_{s=1}^{10} f(s) \cdot \sin \sigma^2
$$ {#eq:eq1}

$$
  P = \frac{3x^2 + 2x + 5}{(1-x)(1+x)}
$$ {#eq:eq2}

The last equation, [@eq:eq2], looks like this in plain text:

``` latex
$$
  P = \frac{3x^2 + 2x + 5}{(1-x)(1+x)}
$$ {#eq:eq2}
```

Note the `{#eq:eq2}` I can use to refer to the equation later.

# Figures {#sec:figures}

Now, to include an image with caption, we simply use the following syntax:

`![Caption text](figures/example.jpg "optional hover text"){#fig:label}`

I generated [@fig:bird] this way!

![After taking a few surfing lessons, William thought that maybe losing full custody of his kids wasn’t that bad.](figures/surfbird.jpg "After taking a few surfing lessons, William thought that maybe losing full custody of his kids wasn’t that bad."){#fig:bird}

# Tables

Tables are just a universal pain, you should probably use an autoconvert website like [this](www.tablesgenerator.com). Below is a labelled example:

::: {#tbl:table1}
| Testcolumn 1  | Testcolumn2          | Testcolumn 3   |
|-------------- |--------------------- |--------------- |
| Row 2         | A value              | Another value  |
| Row 3         | So many values here  | I love Boboti  |
  : This table is just an example! And this caption as well.
:::

In markdown, [@tbl:table1] looks like this:

``` markdown
::: {#tbl:table1}
| Testcolumn 1  | Testcolumn2          | Testcolumn 3   |
|-------------- |--------------------- |--------------- |
| Row 2         | A value              | Another value  |
| Row 3         | So many values here  | I love Boboti  |
  : This table is just an example! And this caption as well.
:::
```

Note the `:::` to seperate the environment, the `{#tbl:table1}` to label the table, and the single `:` to indicate caption.


# References & Citations {#sec:refs}

To cite articles or internal stuff we use the syntax we have allready seen:

`[@LABEL]`

So for example to cite an article, we use `[@ExampleArticle]`, resulting in [@ExampleArticle], appending the list with references at the end of the document. We can also put multiple references in one go, seperated by a `;`: `[@ExampleBook;@ExampleThesis]`, leading to a list like so: [@ExampleBook;@ExampleThesis]. cite/refer And here we will cite some other stuff [@ExampleBook;@ExampleThesis]. In the`Makefile` you can point to the the `.bib` file containing the references and the `.csl` file that styles them (so `[1]` vs `¹` for instance). There is allready a default there, which is good enough for casual writing.

For internal references to Figures/equations/etc. we use the same syntax. As we saw before, by appending `{#TYPE:LABEL}` to a figure/section lets us refer back to it using
`[@TYPE:LABEL]`, so for instance `[@tbl:table1]` generates the following "[@tbl:table1]". In the settings on the beginning of the Markdown file you can change what it looks like exactly.

Another example is the section heading:

`## References & Citations {#sec:refs}`

Now, I can refer to that section like it is a literature reference: `[@sec:refs]` results in [@sec:refs]. Or you can refer to multiple equations like so:

`[@eq:eq1;@eq:eq2]`

Which yields "[@eq:eq1;@eq:eq2]", not the "s" after equations, this is defined in the settings fields at the beginning of this markdown file. See the [pandoc-crossref website](https://lierdakil.github.io/pandoc-crossref) for the full documentation.

# Bibliography {#sec:bib}

The entries below are automatically generated, based on which references you use in the text.
