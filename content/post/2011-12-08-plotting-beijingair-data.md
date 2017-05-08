---
id: 347
title: Plotting BeijingAir Data
date: 2011-12-08T01:05:44+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/13897994725/plotting-beijingair-data
tumblr_simplystatistics_id:
  - 13897994725
dsq_thread_id:
  - 936472943
categories:
  - Uncategorized
tags:
  - air pollution
  - BeijingAir
  - china
  - R
slug: "plotting-beijingair-data"
---
Here&#8217;s a bit of R code for scraping the BejingAir Twitter feed and plotting the hourly PM2.5 values for the past 24 hours. The script defaults to the past 24 hours but you can modify that by simply changing the value for the variable &#8216;n&#8217;. 

You can just grab the code from this <a href="http://www.biostat.jhsph.edu/~rpeng/makeBeijingAirGraph.R" target="_blank">R script</a>. Note that you need to use the latest version of the &#8216;twitteR&#8217; package because the data structure has changed from previous versions.

Using a modified version of the code in the script, I made a plot of the 24-hour average PM2.5 levels in Beijing over the last 2 months or so. The dashed line shows the US national ambient air quality standard for 24-hour average PM2.5. Note that the plot below is 24-hour _averages_ so it is comparable to the US standard and also looks (somewhat) less extreme than the hourly values.

![](http://media.tumblr.com/tumblr_lvuhvyF8S71r08wvg.png)
