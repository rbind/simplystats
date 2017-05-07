---
id: 900
title: Review of R Graphics Cookbook by Winston Chang
date: 2013-01-16T09:47:04+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_447292525326609
al2fb_facebook_link_time:
  - 2013-01-16T14:47:08+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1029149123
categories:
  - Uncategorized
tags:
  - R
slug: "review-of-r-graphics-cookbook-by-winston-chang"
---
I just got a copy of Winston Chang's book _R Graphics Cookbook_, published by O'Reilly Media. This book follows now a series of O'Reilly books on R, including an _R Cookbook._ Winston Chang is a graduate student at Northwestern University but is probably better known to R users as an active member of the ggplot2 mailing list and an active contributor to the ggplot2 source code.

The book has a typical cookbook format. After some preliminaries about how to install R packages and how to read data into R (Chapter 1), he quickly launches into exploratory data analysis and graphing. The basic outline of each section is:

  1. Statement of problem ("You want to make a histogram")
  2. Solution: If you can reasonably do it with base R graphics, here's how you do it. Oh, and here's how you do it in ggplot2. Notice how it's better? (He doesn't actually say that. He doesn't have to.)
  3. Discussion: This usually revolves around different options that might be set or alternative approaches.
  4. See also: Other recipes in the book.

Interestingly, nowhere in the book is the lattice package mentioned (except in passing). But I suppose that's because ggplot2 pretty much supersedes anything you might want to do in the lattice package. Recently, I've been wondering what the future of the lattice package is given that it doesn't seem to me to be going under very active development. But I digress....

Overall, the book is great. I learned quite a few things just in my initial read of the book and as I dug in a bit more there were some functions that I was not familiar with. Much of the material is straight up ggplot2 stuff so if you're an expert there you probably won't get a whole lot more. But my guess is that most are not experts and so will be able to get something out of the book.

The meat of the book covers a lot of different plotting techniques, enough to make your toolbox quite full. If you pick up this book and think something is missing, my guess is that you're making some pretty esoteric plots. I enjoyed the few sections on specifying colors as well as the recipes on making maps (one of ggplot2's strong points). I wish there were more map recipes, but hey, that's just me.

Towards the end there's a nice discussion of graphics file formats (PDF, PNG, WMF, etc.) and the advantages and disadvantages of each (Chapter 14: Output for Presentation). I particularly enjoyed the discussion of fonts in R graphics since I find this to be a fairly confusing aspect of R, even for seasoned users.

The book ends with a series of recipes related to data manipulation. It's funny how many recipes there are about modifying factor variables, but I guess this is just a function of how annoying it is to modify factor variables. There's also some highlighting of the plyr and reshape2 packages.

Ultimately, I think this is a nice complement to Hadley Wickham's _ggplot2 _as most of the recipes focus on implementing plots in ggplot2. I don't think you necessarily need to have a deep understanding of ggplot2 in order to use this book (there are some details in an appendix), but some people might want to grab Hadley's book for more background. In fact, this may be a better book to use to get started with ggplot2 simply because it focuses on specific applications. I kept thinking that if the book had been written using base graphics only, it'd probably have to be 2 or 3 times longer just to fit all the code in, which is a testament to the power and compactness of the ggplot2 approach.

One last note: I got the e-book version of the book, but I would recommend the paper version. With books like these, I like to flip around constantly (since there's no need to read it in a linear fashion) and I find e-readers like iBooks and Kindle Reader to be not so good at this.
