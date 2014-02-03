---
author: Dennis Tenen
url: denten.github.io
tags: source code
---
 

This repository contains the source code for my personal website and portfolio built in plain text and markdown on top of the [Jekyll](http://jekyllrb.com) Ruby framework and hosted on GitHub Pages. You cannot use custom Ruby plugins if you want to use the Jackyll compiler on Github pages.

### Credits

The theme is a fork of [Hyde](http://andhyde.com/), which is itself a based on [Poole](http://getpoole.com) (incidentally, made by Mark Otto who is also respobsible for Twitter Bootstrap).

The artwork is by [Timothy Reynolds](http://www.turnislefthome.com/). Many design ideas were inspired by the work of [toin0u](https://github.com/toin0u) from [sbin.dk](http://sbin.dk), [Divshot](http://www.divshot.com/blog/web-development/advanced-jekyll-features/), [PixelCog](pixelcog.com/blog/2013/jekyll-from-scratch-core-architecture/), and [Keith Morran](http://www.marran.com/tech/category-pagination-in-jekyll/).

### Site structure
```
_pages/         # contains page content in .md
_layouts/       # contains page templates in .html
_posts/         # contains post content in .md 
_includes/      # contains partial reusable snippets like header, sidebar, footer etc.
_data/          # contains arbitrary data .yml
```


### Notes 

- Index page is slightly different from others, in that it needs to live in the root.
- To add pages create a new file in _pages/ and specify the template. Omit the title to exclude it from sidebar navigation. 
- Add a page to _pages for each new category, using the categories template.
- There are different templates for posts in different categories. This allows us to format Talks in a different way from Publicaitons, for example.


