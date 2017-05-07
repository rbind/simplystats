---
id: 1360
title: 'What statistics should do about big data: problem forward not solution backward'
date: 2013-05-29T17:59:07+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_499715476750980
al2fb_facebook_link_time:
  - 2013-05-29T21:59:13+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1336691219
categories:
  - Uncategorized
slug: "what-statistics-should-do-about-big-data-problem-forward-not-solution-backward"
---
There has been a lot of discussion among statisticians about big data and what statistics should do to get involved. Recently [Steve M. and Larry W.](http://normaldeviate.wordpress.com/2013/05/28/steve-marron-on-big-data/) took up the same issue on their blog. I have been thinking about this for a while, since I work in genomics, which almost always comes with "big data". It is also one area of big data where statistics and statisticians have played a huge role.

A question that naturally arises is, "why have statisticians been so successful in genomics?" I think a major reason is the phrase I borrowed from [Brian C. ](http://www.bcaffo.com/)(who may have borrowed it from [Ron B](http://www.biostat.ucla.edu/Directory/Brookmeyer).)

> problem first, not solution backward

One of the reasons that "big data" is even a term is that there is that data are less expensive than they were a few years ago. One example is the dramatic drop in the price of [DNA-sequencing](http://genomebiology.com/2010/11/5/207). But there are many many more examples. The quantified self movement and Fitbits, Google Books, social network data from Twitter, etc. are all areas where data that cost us a huge amount to collect 10 years ago can now be collected and stored very cheaply.

As statisticians we look for generalizable principles; I would say that you have to zoom pretty far out to generalize from social networks to genomics but here are two:

  1. The data can't be easily analyzed in an R session on a simple laptop (say low Gigs to Terabytes)
  2. The data are generally quirky and messy (unstructured text, json files with lots of missing data, fastq files with quality metrics, etc.)

So how does one end up at the "leading edge" of big data? By being willing to [deal with the schlep](http://simplystatistics.org/2012/05/28/schlep-blindness-in-statistics/) and work out the knitty gritty of how you apply even standard methods to data sets where taking the mean takes hours. Or taking the time to learn all the kinks that are specific to say, how does one process a microarray, and then taking the time to fix them. This is why statisticians were so successful in genomics, they focused on the practical problems and this gave them access to data no one else had/could use properly.

Doing these things requires a lot of effort that isn't elegant. It also isn't "statistics" by the definition that only mathematical methodology is statistics. Steve alludes to this in his post when he says:

> Frankly I am a little disappointed that there does not seem to be any really compelling new idea (e.g. as in neural nets or the kernel embedding idea that drove machine learning).

I think this is a view shared by many statisticians. That since there isn't a new elegant theory yet, there aren't "new ideas" in big data. That focus is solution backward. We want an elegant theory that we can then apply to specific problems if they happen to come up.

The alternative is problem forward. The fact that we can collect data so cheaply means we can measure and study things we never could before. Computer scientists, physicists, genome biologists, and others are leading in big data precisely because they aren't thinking about the statistical solution. They are thinking about solving an important scientific problem and are willing to deal with all the dirty details to get there. This allows them to work on data sets and problems that haven't been considered by other people.

In genomics, this has happened before. In that case, the invention of microarrays revolutionized the field and statisticians jumped on board, working closely with scientists, handling the dirty details, and [building software so others could too](http://www.bioconductor.org/). As a discipline if we want to be part of the "big data" revolution I think we need to focus on the scientific problems and let methodology come second. That requires a rethinking of what it means to be statistics. Things like parallel computing, data munging, reproducibility, and software development have to be accepted as equally important to methods development.

The good news is that there is plenty of room for statisticians to bring our unique skills in dealing with uncertainty to these new problems; but we will only get a seat at the table if we are willing to deal with [the mess that comes with doing real science](http://simplystatistics.org/2012/06/22/statistics-and-the-science-club/).

I'll close by listing a few things I'd love to see:

  1. <span style="line-height: 16px;">A Bioconductor-like project for social network data. Tyler M. and Ali S. <a href="http://www.csss.washington.edu/Papers/wp127.pdf">have a paper </a>that would make for an awesome package for this project. </span>
  2. [Statistical pre-processing](http://smart-stats.org/) for fMRI and other brain imaging data. Keep an eye on our smart group for that.
  3. Data visualization for translational applications, dealing with all the niceties of human-data interfaces. See [healthvis](http://healthvis.org/) or the stuffy [Miriah Meyer](http://www.cs.utah.edu/~miriah/) is doing.
  4. Most importantly, starting with specific, unsolved scientific problems. Seeking novel ways to collect cheap data, and analyzing them, even with known and straightforward statistical methods to deepen our understanding about ourselves or the universe.
