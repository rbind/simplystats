---
id: 628
title: I give up, I am embracing pie charts
date: 2012-11-27T20:53:20+00:00
author: Rafael Irizarry
dsq_thread_id:
  - 947274365
categories:
  - Uncategorized
tags:
  - humor
  - R
slug: "i-give-up-i-am-embracing-pie-charts"
---
Most statisticians know that pie charts are a terrible way to plot percentages. You can find explanations [here](http://www.biostat.wisc.edu/~kbroman/topten_worstgraphs/), [here](http://blog.revolutionanalytics.com/2009/08/how-pie-charts-fail.html), and [here](https://www.google.com/search?q=why+do+pie+charts+suck&oq=why+do+pie+charts+suck&aqs=chrome.0.57j62.4254&sugexp=chrome,mod=3&sourceid=chrome&ie=UTF-8) as well as the R help file for the `pie` function which states:

> Pie charts are a very bad way of displaying information. The eye is good at judging linear measures and bad at judging relative areas. A bar chart or dot chart is a preferable way of displaying this type of data.


I have only used the `pie` R function once and it was to make this plot (R code below):

![pacman](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/pacman.gif)

  
So why are they ubiquitous? The best explanation I've heard is that they are easy to make in Microsoft Excel. Regardless, after years of training, lay people are probably better at interpreting pie charts than any other graph. So I'm surrendering and embracing the pie chart. Jeff's [recent post](http://simplystatistics.org/2012/11/26/the-statisticians-at-fox-news-use-classic-and-novel-graphical-techniques-to-lead-with-data/) shows we have bigger fish to fry.


```{r}
saveGIF({
  N=10
  for(i in 0:(N-1)){
    x <- cos(2*pi/N*i)
    y <- x+1
    z <- (y-2)*22.5
    pie(c(y,8-y), col=c("white","yellow"), init.angle=135-z, 
        border=FALSE, labels=NA)
    }
  }, "pacman.gif", interval = 0.1)
```

