---
id: 256
title: A plot of my citations in Google Scholar vs. Web of Science
date: 2012-03-08T16:00:05+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/18950350459/a-plot-of-my-citations-in-google-scholar-vs-web-of
tumblr_simplystatistics_id:
  - 18950350459
dsq_thread_id:
  - 936757498
categories:
  - Uncategorized
tags:
  - Citations
  - data
  - Google Scholar
  - R
  - Web of Knowledge
slug: "a-plot-of-my-citations-in-google-scholar-vs-web-of"
---
There has <a href="http://www.functionalneurogenesis.com/blog/2012/02/google-scholar-vs-scopus-web-of-science/" target="_blank">been</a> <a href="http://www.nature.com/nature/journal/v483/n7387/full/483036c.html" target="_blank">some</a> <a href="http://www.nature.com/nature/journal/v483/n7387/full/483036d.html" target="_blank">discussion </a>about whether Google Scholar or one of the proprietary software companies numbers are better for citation counts. I personally think Google Scholar is better for a number of reasons:

  1. Higher numbers, but consistently/adjustably higher <img src="http://simplystatistics.org/wp-includes/images/smilies/simple-smile.png" alt=":-)" class="wp-smiley" style="height: 1em; max-height: 1em;" />
  2. It&#8217;s free and the data are openly available. 
  3. It covers more ground (patents, theses, etc.) to give a better idea of global impact
  4. It&#8217;s easier to use

I haven&#8217;t seen a plot yet relating Web of Science citations to Google Scholar citations, so I made one for my papers.

<img height="400" src="http://biostat.jhsph.edu/~jleek/citations.png" width="400" />

GS has about 41% more citations per paper than Web of Science. That is consistent with what other people have found. It also looks reasonably linearish. I wonder what other people&#8217;s plots would look like? 

Here is the R code I used to generate the plot (the names are Pubmed IDs for the papers):

> library(ggplot2)
> 
> names = c(16141318,16357033,16928955,17597765,17907809,19033188,19276151,19924215,20560929,20701754,20838408, 21186247,21685414,21747377,21931541,22031444,22087737,22096506,22257669) 
> 
> y = c(287,122,84,39,120,53,4,52,6,33,57,0,0,4,1,5,0,2,0)
> 
> x = c(200,92,48,31,79,29,4,51,2,18,44,0,0,1,0,2,0,1,0)
> 
> Year = c(2005,2006,2007,2007,2007,2008,2009,2009,2011,2010,2010,2011,2012,2011,2011,2011,2011,2011,2012)
> 
> <div>
>   <p>
>     q <- qplot(x,y,xlim=c(-20,300),ylim=c(-20,300),xlab=&#8221;Web of Knowledge&#8221;,ylab=&#8221;Google Scholar&#8221;) + geom_point(aes(colour=Year),size=5) + geom_line(aes(x = y, y = y),size=2)
>   </p>
> </div>
