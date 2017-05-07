---
id: 2573
title: Marie Curie says stop hating on quilt plots already.
date: 2014-01-28T08:50:37+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_601024159953444
al2fb_facebook_link_time:
  - 2014-01-28T13:50:42+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/01/heatmap-300x300.png
dsq_thread_id:
  - 2185923543
categories:
  - Uncategorized
slug: "marie-curie-says-stop-hating-on-quilt-plots-already"
---
> "There are sadistic scientists who hurry to hunt down error instead of establishing the truth." -Marie Curie (http://en.wikiquote.org/wiki/Marie_Curie)

Thanks to Kasper H. for that quote. I think it is a perfect fit for today's culture of academic put down as academic contribution. One perfect example is the explosion of hate against the quilt plot. A quilt plot is a heatmap with several parameters selected in advance; that's it. [This simplification](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0085047) of R's heatmap function appeared in the journal PLoS One. They say (though not up front and not clearly enough for my personal taste) that they know it is just a heatmap.

Over the course of the next several weeks quilt plots went viral. Here [are a](https://twitter.com/EvolOdonata/status/427657216154664960) [few](https://twitter.com/BioMickWatson/status/426780957279281152) [example](https://twitter.com/rvimieiro/status/423418772368547840) tweets. It was also [> "There are sadistic scientists who hurry to hunt down error instead of establishing the truth." -Marie Curie (http://en.wikiquote.org/wiki/Marie_Curie)

Thanks to Kasper H. for that quote. I think it is a perfect fit for today's culture of academic put down as academic contribution. One perfect example is the explosion of hate against the quilt plot. A quilt plot is a heatmap with several parameters selected in advance; that's it. [This simplification](http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0085047) of R's heatmap function appeared in the journal PLoS One. They say (though not up front and not clearly enough for my personal taste) that they know it is just a heatmap.

Over the course of the next several weeks quilt plots went viral. Here [are a](https://twitter.com/EvolOdonata/status/427657216154664960) [few](https://twitter.com/BioMickWatson/status/426780957279281152) [example](https://twitter.com/rvimieiro/status/423418772368547840) tweets. It was also](http://liorpachter.wordpress.com/2014/01/19/why-do-you-look-at-the-speck-in-your-sisters-quilt-plot-and-pay-no-attention-to-the-plank-in-your-own-heat-map/) on [people's blogs](http://eagereyes.org/series/peer-review/1-quilt-plots) and [even in the scientist](http://www.the-scientist.com/?articles.view/articleNo/38919/title/Not-So-New-/). So I did an experiment. I built a table of frequencies in R like this and applied the heatmap function in R, then the quilt.plot function in fields, then the function written by the authors of the paper with as minimal tweeking as possible.

<pre class="brush: r; title: ; notranslate" title="">set.seed(12345)
library(fields)
x = matrix(rbinom(25,size=4,prob=0.5),nrow=5)
pt = prop.table(x)
heatmap(pt)
quilt.plot(x=rep(1:5,5),y=rep(1:5,5),z=pt)
quilt(pt,1:5,1:5,zlabel="Proportion")
</pre>

Here are the results:

**heatmap**

<a href="http://simplystatistics.org/2014/01/28/marie-curie-says-stop-hating-on-quilt-plots-already/heatmap/" rel="attachment wp-att-2588"><img class="alignnone size-medium wp-image-2588" alt="heatmap" src="http://simplystatistics.org/wp-content/uploads/2014/01/heatmap-300x300.png" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2014/01/heatmap-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2014/01/heatmap-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2014/01/heatmap.png 480w" sizes="(max-width: 300px) 100vw, 300px" /></a>

**quilt.plot**

<a href="http://simplystatistics.org/2014/01/28/marie-curie-says-stop-hating-on-quilt-plots-already/quilt-plot/" rel="attachment wp-att-2589"><img class="alignnone size-medium wp-image-2589" alt="quilt.plot" src="http://simplystatistics.org/wp-content/uploads/2014/01/quilt.plot_-300x300.png" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2014/01/quilt.plot_-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2014/01/quilt.plot_-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2014/01/quilt.plot_.png 480w" sizes="(max-width: 300px) 100vw, 300px" /></a>

**quilt**

**<a href="http://simplystatistics.org/2014/01/28/marie-curie-says-stop-hating-on-quilt-plots-already/quilt/" rel="attachment wp-att-2590"><img class="alignnone size-medium wp-image-2590" alt="quilt" src="http://simplystatistics.org/wp-content/uploads/2014/01/quilt-300x300.png" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2014/01/quilt-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2014/01/quilt-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2014/01/quilt.png 480w" sizes="(max-width: 300px) 100vw, 300px" /></a>**

It is clear that out of the box and with no tinkering, the new plot makes something nicer/more interpretable. The columns/rows are where I expect and the scale is there and nicely labeled. Everyone who has ever made heatmaps in R has some bit of code that looks like this:

<pre class="brush: r; title: ; notranslate" title="">image(t(bdat)[,nrow(bdat):1],col=colsb(9),breaks=quantile(as.vector(as.matrix(dat)),probs=seq(0,1,length=10)),xaxt="n",yaxt="n",xlab="",ylab="")

</pre>

To hack together a heatmap in R that looks like you expect. It is a total pain. Obviously the quilt plot paper has a few flaws:

  1. It tries to introduce the quilt plot as a new idea.
  2. It doesn't just come out and say it is a hack of the heatmap function, but tries to dance around it.
  3. It produces code, but only as images in word files. I had to retype the code to make my plot.

That being said here are a couple of other true things about the paper:

  1. The code works if you type it out and apply it.
  2. They produced code.
  3. The paper is open access.
  4. The paper is correct technically.
  5. The hack is useful for users with few R skills.

So why exactly isn't it a paper? It smacks of academic elitism to claim that this isn't good enough because it isn't a "new idea". Not every paper discovers radium. Some papers are better than others and that is ok. I think the quilt plot being published isn't a problem, maybe I don't like the way it is written exactly, but they do acknowledge the heat map, they do produce correct, relevant code, and it does solve a problem people actually have. That is better than a lot of papers that appear in more prestigious journals. [Arsenic life](http://www.nature.com/news/arsenic-life-bacterium-prefers-phosphorus-after-all-1.11520#/b1) anyone?

I think it is useful to have a forum where people can post correct, useful, but not necessarily ground breaking results and get credit for them, even if the credit is modest. Otherwise we might miss out on useful bits of code. Frank Harrell has a [bunch of functions](http://cran.r-project.org/web/packages/Hmisc/index.html) that tons of people use but he doesn't get citations, you probably have heard of the Hmisc package if you use R.

But did you know Karl Broman has a bunch of really useful functions in his [personal R package](https://github.com/kbroman/broman), [qqline2](https://github.com/kbroman/broman/blob/master/R/qqline2.R) is great. I know Rafa has a bunch of functions he has never published because they seem "too trivial" but I use them all the time. Every scientist who touches code has a personal library like this. I'm not saying the quilt plot is in that category. But I am saying that it is stupid not to have a public forum for making these functions available to other scientists. But that won't happen if the "quilt plot backlash" is what people see when they try to get published credit for simple code that solves real problems.

Hacks like the quilt plot can help people who aren't comfortable with R write reproducible scripts without having to figure out every plotting parameter. Keeping in mind that [the vast majority of data analysis is not done by statisticians](http://simplystatistics.org/2013/06/14/the-vast-majority-of-statistical-analysis-is-not-performed-by-statisticians/), it seems like these little hacks are an important part of science. If you believe in figshare, github, open science, and shareable code, you shouldn't be making fun of the quilt plotters.

Marie Curie says so.
