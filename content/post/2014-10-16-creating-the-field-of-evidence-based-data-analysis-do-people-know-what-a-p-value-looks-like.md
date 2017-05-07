---
id: 3382
title: 'Creating the field of evidence based data analysis - do people know what a p-value looks like?'
date: 2014-10-16T15:00:34+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_712628068793052
al2fb_facebook_link_time:
  - 2014-10-16T19:00:39+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3124050694
categories:
  - Uncategorized
slug: "creating-the-field-of-evidence-based-data-analysis-do-people-know-what-a-p-value-looks-like"
---
In the medical sciences, there is a discipline called "[evidence based medicine](http://en.wikipedia.org/wiki/Evidence-based_medicine)". The basic idea is to study the actual practice of medicine using experimental techniques. The reason is that while we may have good experimental evidence about specific medicines or practices, the global behavior and execution of medical practice may also matter. There have been some success stories from this approach and also backlash from physicians who [don't like to be told how to practice medicine.](http://onlinelibrary.wiley.com/doi/10.1111/j.1523-536X.1996.tb00491.x/abstract) However, on the whole it is a valuable and interesting scientific exercise.

Roger introduced the idea of [evidence based data analysis](http://simplystatistics.org/2013/08/28/evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-2/) in a previous post. The basic idea is to study the actual practice and behavior of data analysts to identify how analysts behave. There is a strong history of this type of research within the data visualization community [starting with Bill Cleveland](http://www.stat.purdue.edu/~wsc/) and extending forward to work by [Diane Cook](http://dicook.github.io/cv.html), , [Jeffrey Heer](http://vis.stanford.edu/papers/crowdsourcing-graphical-perception), and others.

[Today we published](https://peerj.com/articles/589/) a large-scale evidence based data analysis randomized trial. Two of the most common data analysis tasks (for better or worse) are exploratory analysis and the identification of statistically significant results. Di Cook's group calls this idea ["graphical inference" or "visual significance"](http://stat.wharton.upenn.edu/~buja/PAPERS/Wickham-Cook-Hofmann-Buja-IEEE-TransVizCompGraphics_2010-Graphical%20Inference%20for%20Infovis.pdf) and they have studied human's ability to detect significance in the context of [In the medical sciences, there is a discipline called "[evidence based medicine](http://en.wikipedia.org/wiki/Evidence-based_medicine)". The basic idea is to study the actual practice of medicine using experimental techniques. The reason is that while we may have good experimental evidence about specific medicines or practices, the global behavior and execution of medical practice may also matter. There have been some success stories from this approach and also backlash from physicians who [don't like to be told how to practice medicine.](http://onlinelibrary.wiley.com/doi/10.1111/j.1523-536X.1996.tb00491.x/abstract) However, on the whole it is a valuable and interesting scientific exercise.

Roger introduced the idea of [evidence based data analysis](http://simplystatistics.org/2013/08/28/evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-2/) in a previous post. The basic idea is to study the actual practice and behavior of data analysts to identify how analysts behave. There is a strong history of this type of research within the data visualization community [starting with Bill Cleveland](http://www.stat.purdue.edu/~wsc/) and extending forward to work by [Diane Cook](http://dicook.github.io/cv.html), , [Jeffrey Heer](http://vis.stanford.edu/papers/crowdsourcing-graphical-perception), and others.

[Today we published](https://peerj.com/articles/589/) a large-scale evidence based data analysis randomized trial. Two of the most common data analysis tasks (for better or worse) are exploratory analysis and the identification of statistically significant results. Di Cook's group calls this idea ["graphical inference" or "visual significance"](http://stat.wharton.upenn.edu/~buja/PAPERS/Wickham-Cook-Hofmann-Buja-IEEE-TransVizCompGraphics_2010-Graphical%20Inference%20for%20Infovis.pdf) and they have studied human's ability to detect significance in the context of](http://www.tandfonline.com/doi/abs/10.1080/01621459.2013.808157) and how it [associates with demographics and visual characteristics of the plot.](http://arxiv.org/abs/1408.1974)

We performed a randomized study to determine if data analysts with basic training could identify statistically significant relationships. Or as the first author put it in a tweet:

<blockquote class="twitter-tweet" width="550">
  <p>
    First paper just dropped!&#10;Can you tell the difference between these two plots?&#10;<a href="https://t.co/Lng0FWI0XY">https://t.co/Lng0FWI0XY</a> <a href="http://t.co/zFCwwcxaAX">pic.twitter.com/zFCwwcxaAX</a>
  </p>
  
  <p>
    &mdash; Aaron Fisher (@PrfFarnsworth) <a href="https://twitter.com/PrfFarnsworth/status/522790724774141952">October 16, 2014</a>
  </p>
</blockquote>



What we found was that people were pretty bad at detecting statistically significant results, but that over multiple trials they could improve. This is a tentative first step toward understanding how the general practice of data analysis works. If you want to play around and see how good you are at seeing p-values we also built this interactive Shiny app. If you don't see the app you can also go to the [Shiny app page here.](http://glimmer.rstudio.com/afisher/EDA/)

&nbsp;
