---
id: 4563
title: Instead of research on reproducibility, just do reproducible research
date: 2015-12-11T12:18:33+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_893568160699041
al2fb_facebook_link_time:
  - 2015-12-11T17:18:43+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 4395554109
categories:
  - Uncategorized
slug: "instead-of-research-on-reproducibility-just-do-reproducible-research"
---
Right now reproducibility, replicability, false positive rates, biases in methods, and other problems with science are the hot topic. As I mentioned in a previous post pointing out a flaw with a scientific study is way easier to do correctly than generating a new scientific study. Some folks have noticed that right now there is a huge market for papers pointing out how science is flawed. The combination of the relative ease of pointing out flaws and the huge payout for writing these papers is helping to generate the hype around the "reproducibility crisis".

I [gave a talk](http://www.slideshare.net/jtleek/evidence-based-data-analysis-45800617) a little while ago at an NAS workshop where I stated that all the tools for reproducible research exist (the caveat being really large analyses - although that is changing as well). To make a paper completely reproducible, open, and available for post publication review you can use the following approach with no new tools/frameworks needed.

  1. Use [Github ](https://github.com/)for version control.
  2. Use [rmarkdown](http://rmarkdown.rstudio.com/) or [iPython notebooks](http://ipython.org/notebook.html) for your analysis code
  3. When your paper is done post it to [arxiv](http://arxiv.org/) or [biorxiv](http://biorxiv.org/).
  4. Post your data to an appropriate repository like [SRA](http://www.ncbi.nlm.nih.gov/sra) or a general purpose site like [figshare.](https://figshare.com/)
  5. Send any software you develop to a controlled repository like [CRAN](https://cran.r-project.org/) or [Bioconductor](http://bioconductor.org/).
  6. Participate in the [post publication discussion on Twitter and with a Blog](http://simplystatistics.org/2015/11/16/so-you-are-getting-crushed-on-the-internet-the-new-normal-for-academics/)

This is also true of open science, open data sharing, reproducibility, replicability, post-publication peer review and all the other issues forming the "reproducibility crisis". There is a lot of attention and heat that has focused on the "crisis" or on folks who make a point to take a stand on reproducibility or open science or post publication review. But in the background, outside of the hype, there are a large group of people that are quietly executing solid, open, reproducible science.

I wish that this group would get more attention so I decided to point out a few of them. Next time somebody asks me about the research on reproducibility or open science I'll just point them here and tell them to just follow the lead of people doing it.


  * **Karl Broman** - posts all of his [talks online ](http://kbroman.org/pages/talks.html), generates many widely used [open source packages](http://kbroman.org/pages/software.html), writes [free/open tutorials](http://kbroman.org/pages/tutorials.html) on everything from knitr to making webpages, makes his [papers](http://www.ncbi.nlm.nih.gov/pubmed/26290572) highly [reproducible](https://github.com/kbroman/Paper_SampleMixups).
  * **Jessica Li** - [posts her data online and writes open source software for her analyses](http://www.stat.ucla.edu/~jingyi.li/software-and-data.html).
  * **Mark Robinson - **posts many of his papers as [preprints on biorxiv](http://biorxiv.org/search/author1%3Arobinson%252C%2Bmd%20numresults%3A10%20sort%3Arelevance-rank%20format_result%3Astandard), makes his [analyses reproducible](https://github.com/markrobinsonuzh/diff_splice_paper), writes [open source software ](http://bioconductor.org/packages/release/bioc/html/Repitools.html)
  * **Florian Markowetz -[ ](http://www.markowetzlab.org/software/)**[writes open source software](http://www.markowetzlab.org/software/), provides [Bioconductor data for major projects](http://www.markowetzlab.org/data.php), links [his papers with his code](http://www.markowetzlab.org/publications.php) nicely on his publications page.
  * **Raphael Gottardo** - [writes/maintains many open source software packages](http://www.rglab.org/software.html), makes [his analyses reproducible and available via Github](https://github.com/RGLab/BNCResponse), posts [preprints of his papers](http://biorxiv.org/content/early/2015/06/15/020842).
  * **Genevera Allen - **writes](https://cran.r-project.org/web/packages/TCGA2STAT/index.html) to make data easier to access, posts [preprints on biorxiv](http://biorxiv.org/content/early/2015/09/24/027516) and [on arxiv](http://arxiv.org/pdf/1502.03853v1.pdf)
  * **Lorena Barba** - [teaches open source moocs](http://openedx.seas.gwu.edu/courses/GW/MAE6286/2014_fall/about), with lessons as [open source iPython modules](https://github.com/barbagroup/CFDPython), and [reproducible code for her analyses](https://github.com/barbagroup/pygbe).
  * **Alicia Oshlack  - **writes papers with [completely reproducible analyses](http://www.genomemedicine.com/content/7/1/43), [publishes lots of open source software](http://bioconductor.org/packages/release/bioc/html/missMethyl.html) and publishes [preprints](http://biorxiv.org/content/early/2015/01/23/013698) for her papers.
  * **Baggerly and Coombs** - although they are famous for a [highly public reproducible piece of research](https://projecteuclid.org/euclid.aoas/1267453942) they have also quietly implemented policies like [making all  reports reproducible for their consulting center](http://magazine.amstat.org/blog/2011/01/01/scipolicyjan11/).

This list was made completely haphazardly as all my lists are, but just to indicate there are a ton of people out there doing this. One thing that is clear too is that grad students and postdocs are adopting the approach I described at a very high rate.

Moreover there are people that have been doing parts of this for a long time (like the [physics](http://arxiv.org/) or [biostatistics](http://biostats.bepress.com/jhubiostat/) communities with preprints, or how people have used [Sweave for a long time](https://projecteuclid.org/euclid.aoas/1267453942)) . I purposely left people off the list like Titus and Ethan who have gone all in, even posting their [grants](http://ivory.idyll.org/blog/grants-posted.html) [online](http://jabberwocky.weecology.org/2012/08/10/a-list-of-publicly-available-grant-proposals-in-the-biological-sciences/). I did this because they are very loud advocates of open science, but I wanted to highlight quieter contributors and point out that while there is a lot of noise going on over in one corner, many people are quietly doing really good science in another.
