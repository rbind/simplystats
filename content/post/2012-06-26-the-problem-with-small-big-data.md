---
id: 166
title: The problem with small big data
date: 2012-06-26T12:56:13+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/25924012903/the-problem-with-small-big-data
tumblr_simplystatistics_id:
  - 25924012903
dsq_thread_id:
  - 936785632
categories:
  - Uncategorized
tags:
  - big data
slug: "the-problem-with-small-big-data"
---
There&#8217;s lots of talk about &#8220;big data&#8221; these days and I think that&#8217;s great. I think it&#8217;s bringing statistics out into the mainstream (even if they don&#8217;t call it statistics) and it creating lots of opportunities for people with statistics training. It&#8217;s one of the reasons we created this blog.

One thing that I think gets missed in much of the mainstream reporting is that, in my opinion, the biggest problems aren&#8217;t with the truly massive datasets out there that need to be mined for important information. Sure, those types of problems pose interesting challenges with respect to hardware infrastructure and algorithm design.

I think a bigger problem is what I call &#8220;small big data&#8221;. Small big data is the dataset that is collected by an individual whose data collection skills are far superior to his/her data analysis skills. You can think of the size of the problem as being measured by the ratio of the dataset size to the investigator&#8217;s statistical skill level. For someone with no statistical skills, any dataset represents &#8220;big data&#8221;.

These days, any individual can create a massive dataset with relatively few resources. In some of the work I do, we send people out with portable air pollution monitors that record pollution levels every 5 minutes over a 1-week period. People with fitbits can get highly time-resolved data about their daily movements. A single MRI can produce millions of voxels of data.

One challenge here is that these examples all represent datasets that are large &#8220;on paper&#8221;. That is, there are a lot of bits to store, but that doesn&#8217;t mean there&#8217;s a lot of useful information there. For example, I find people are often impressed by data that are collected with very high temporal or spatial resolution. But often, you don&#8217;t need that level of detail and can get away with coarser resolution over a wider range of scenarios. For example, if you&#8217;re interested in changes in air pollution exposure across seasons but you only measure people in the summer, then it doesn&#8217;t matter if you measure levels down to the microsecond and produce terabytes of data. Another example might be the idea the <a href="http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3137276/?tool=pubmed" target="_blank">sequencing technology doesn&#8217;t in fact remove biological variability</a>, no matter how large a dataset it produces.

Another challenge is that the person who collected the data is often not qualified/prepared to analyze it. If the data collector didn&#8217;t arrange beforehand to have someone analyze the data, then they&#8217;re often stuck. Furthermore, usually the grant that paid for the data collection didn&#8217;t budget (enough) for the analysis of the data. The result is that there&#8217;s a lot of &#8220;small big data&#8221; that just sits around unanalyzed. This is an unfortunate circumstance, but in my experience quite common.

One conclusion we can draw is that we need to get more statisticians out into the field both helping to analyze the data; and perhaps more importantly, designing good studies so that useful data are collected in the first place (as opposed to merely &#8220;big&#8221; data). But the sad truth is that there aren&#8217;t enough of us on the planet to fill the demand. So we need to come up with more creative ways to get the skills out there without requiring our physical presence.
