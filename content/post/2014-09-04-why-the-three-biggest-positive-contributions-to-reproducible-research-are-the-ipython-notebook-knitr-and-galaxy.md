---
id: 3252
title: Why the three biggest positive contributions to reproducible research are the iPython Notebook, knitr, and Galaxy
date: 2014-09-04T14:08:42+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_694282403960952
al2fb_facebook_link_time:
  - 2014-09-04T18:08:48+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2988350630
categories:
  - Uncategorized
slug: "why-the-three-biggest-positive-contributions-to-reproducible-research-are-the-ipython-notebook-knitr-and-galaxy"
---
There is a huge amount of interest in reproducible research and replication of results. Part of this is driven by some of the pretty major mistakes in reproducibility we have seen in [economics ](http://simplystatistics.org/2013/04/19/podcast-7-reinhart-rogoff-reproducibility/)and [genomics](http://simplystatistics.org/2011/09/11/the-duke-saga/). This has spurred discussion at a variety of levels including at the level of the [United States Congress.](http://simplystatistics.org/2014/04/01/this-is-how-an-important-scientific-debate-is-being-used-to-stop-epa-regulation/)

To solve this problem we need the appropriate infrastructure. I think developing infrastructure is a lot like playing the lottery, only if the lottery required a lot more work to buy a ticket. You pour a huge amount of effort into building good infrastructure.  I think it helps if you build it for yourself like Yihui did for knitr:



(also [make sure you go read the blog post](http://datascience.la/yihui-xie-the-user-2014-interview/) over at Data Science LA)

If lots of people adopt it, you are set for life. If they don't, you did all that work for nothing. So you have to applaud all the groups who have made efforts at building infrastructure for reproducible research.

I would contend that the largest positive contributions to reproducibility in sheer number of analyses made reproducible are:

  *  The [knitr](http://yihui.name/knitr/) R package (or more recently [rmarkdown](http://rmarkdown.rstudio.com/)) for creating literate webpages and documents in R.
  * [iPython notebooks ](http://ipython.org/notebook.html) for creating literate webpages and documents interactively in Python.
  * The [Galaxy project](http://galaxyproject.org/) for creating reproducible work flows (among other things) combining known tools.

There are similarities and differences between the different platforms but the one thing I think they all have in common is that they added either no or negligible effort to people's data analytic workflows.

knitr and iPython notebooks have primarily increased reproducibility among folks who have some scripting experience. I think a major reason they are so popular is because you just write code like you normally would, but embed it in a simple to use document. The workflow doesn't change much for the analyst because they were going to write that code anyway. The document just allows it to be built into a more shareable document.

Galaxy has increased reproducibility for many folks, but my impression is the primary user base are folks who have less experience scripting. They have worked hard to make it possible for these folks to analyze data they couldn't before in a reproducible way. But the reproducibility is incidental in some sense. The main reason users come is that they would have had to stitch those pipelines together anyway. Now they have an easier way to do it (lowering workload) and they get reproducibility as a bonus.

If I was in charge of picking the next round of infrastructure projects that are likely to impact reproducibility or science in a positive way, I would definitely look for projects that have certain properties.

  * For scripters and experts I would look for projects that interface with what people are already doing (most data analysis is in R or Python these days), require almost no extra work, and provide some benefit (reproducibility or otherwise). I would also look for things that are agnostic to which packages/approaches people are using.
  * For non-experts I would look for projects that enable people to build pipelines  they were't able to before using already standard tools and give them things like reproducibility for free.

Of course I wouldn't put me in charge anyway, I've never won the lottery with any infrastructure I've tried to build.
