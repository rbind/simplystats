---
id: 3338
title: "Data science can't be point and click"
date: 2014-10-09T16:16:17+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_709351905787335
al2fb_facebook_link_time:
  - 2014-10-09T20:16:24+00:00
al2fb_facebook_link_picture:
  - post=http://www.tylervigen.com/correlation_project/correlation_images/us-spending-on-science-space-and-technology_suicides-by-hanging-strangulation-and-suffocation.png
dsq_thread_id:
  - 3100769477
categories:
  - Uncategorized
slug: "data-science-cant-be-point-and-click"
---
As data becomes cheaper and cheaper there are more people that want to be able to analyze and interpret that data.  I see more and more that people are creating tools to accommodate folks who aren't trained but who still want to look at data _right now. _While I admire the principle of this approach - we need to democratize access to data - I think it is the most dangerous way to solve the problem.

The reason is that, especially with big data, it is very easy to find things like this with point and click tools:

<div style="width: 670px" class="wp-caption aligncenter">
  <a href="http://www.tylervigen.com/view_correlation?id=1597"><img class="" src="http://www.tylervigen.com/correlation_project/correlation_images/us-spending-on-science-space-and-technology_suicides-by-hanging-strangulation-and-suffocation.png" alt="" width="660" height="230" /></a>
  
  <p class="wp-caption-text">
    US spending on science, space, and technology correlates with Suicides by hanging, strangulation and suffocation (http://www.tylervigen.com/view_correlation?id=1597)
  </p>
</div>

The danger with using point and click tools is that it is very hard to automate the identification of warning signs that seasoned analysts get when they have their hands in the data. These may be spurious correlation like the plot above or issues with data quality, or missing confounders, or implausible results. These things are much easier to spot when analysis is being done interactively. Point and click software is also getting better about reproducibility, but it still a major problem for many interfaces.

Despite these issues, point and click software are still all the rage. I understand the sentiment, there is a bunch of data just laying there and [there aren't enough people to analyze it expertly](http://simplystatistics.org/2013/06/14/the-vast-majority-of-statistical-analysis-is-not-performed-by-statisticians/). But you wouldn't want me to operate on you using point and click surgery software. You'd want a surgeon who has practiced on real people and knows what to do when she has an artery in her hand. In the same way, I think point and click software allows untrained people to do awful things to big data.

The ways to solve this problem are:

  1. More data analysis training
  2. Encouraging people to do their analysis interactively

I have a few more tips which I have summarized in this talk on [things statistics taught us about big data](http://www.slideshare.net/jtleek/10-things-statistics-taught-us-about-big-data).
