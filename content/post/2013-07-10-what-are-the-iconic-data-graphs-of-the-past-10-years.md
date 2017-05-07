---
id: 1481
title: What are the iconic data graphs of the past 10 years?
date: 2013-07-10T10:00:56+00:00
author: Roger Peng
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_515325681856626
al2fb_facebook_link_time:
  - 2013-07-10T14:01:11+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1484513592
categories:
  - Uncategorized
slug: "what-are-the-iconic-data-graphs-of-the-past-10-years"
---
This article in the New York Times about the supposed [death of photography](http://bits.blogs.nytimes.com/2013/07/05/the-death-of-photography-has-been-greatly-exaggerated/?smid=pl-share) got me thinking about statistics. Apparently, the death of photography has been around the corner for some time now:

> For years, photographers have been bracing for this moment, warned that the last rites will be read for photography when video technology becomes good enough for anyone to record. But as this Fourth of July showed me, I think the reports of the death of photography have been greatly exaggerated.

Yet, photography has not died and, says [Robin Kelsey](http://www.fas.harvard.edu/~amciv/faculty/kelsey.shtml), a professor of photography at Harvard,

> The fact that we can commit a single image to memory in a way that we cannot with video is a big reason photography is still used so much today.

This got me thinking about data graphics. One long-time gripe about data graphics in R has been it's horrible lack of support for dynamic or interactive graphics. graphics. This is an indisputable fact, especially in the early years. Nowadays there are quite a few extensions and packages that allow R to create dynamic graphics, but it still doesn't feel like part of the "core". I still feel like when I talk to people about R, the first criticism they jump to is the poor support for dynamic/interactive graphics.

But personally, I've never thought it was a big deal. Why? Because I don't really find such graphics useful for truly _thinking_ about data. I've definitely enjoyed viewing some of them (especially some of the D3 stuff), and it's often fun to move sliders around and see how things change (perhaps my favorite is the [Baby Name Voyager](http://www.babynamewizard.com/voyager) or maybe [this one showing rapper wealth](http://www.businessweek.com/articles/2013-07-09/jay-z-is-right-most-rappers-are-lying-about-their-money)).

But in the end, what are you supposed to walk away with? As a a creator of such a graphic, how are you supposed to communicate the evidence in the data? The key element of dynamic/interactive graphics is that it allows the viewer to explore the data in their own way, not in some prescribed static way that you've explicitly set out. Ultimately, I think that aspect makes dynamic graphics useful for presenting _data_, but not that useful for presenting _evidence_. If you want to present evidence, you have to tell a story with the data, you can't just let the viewer tell their own story.

This got me thinking about what are the iconic data "photos" of the past 10 years (or so). The NYT article mentions the famous “[Raising the Flag on Iwo Jima](http://en.wikipedia.org/wiki/Raising_the_Flag_on_Iwo_Jima)” by AP photographer Joe Rosenthal as an image that many would recognize (and perhaps remember). What are the data graphics that are burned in your memory?

I'll give one example. I remember seeing Richard Peto give a talk here about the benefits of smoking cessation and its effect on life expectancy. He found that according to large population surveys, people who quit smoking by the age of 40 or so had more or less the same life expectancy as those who never smoked at all.  The graph he showed was one very similar to [Figure 3 from this article](http://www.nejm.org/action/showImage?doi=10.1056%2FNEJMsa1211128&iid=f03). Although I already knew that smoking was bad for you, this picture really crystalized it for me in a specific way.

Of course, sometimes data graphics are [memorable for other reasons](http://simplystatistics.org/2012/11/26/the-statisticians-at-fox-news-use-classic-and-novel-graphical-techniques-to-lead-with-data/), but I'd like to try and stay positive here. Which data graphics have made a big impression on you?
