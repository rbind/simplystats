---
id: 438
title: Kindle Fire and Machine Learning
date: 2011-09-29T14:05:00+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/10806006878/kindle-fire-and-machine-learning
tumblr_simplystatistics_id:
  - 10806006878
dsq_thread_id:
  - 934741764
categories:
  - Uncategorized
tags:
  - ec2
  - kindle
  - Machine Learning
slug: "kindle-fire-and-machine-learning"
---
Amazon released it&#8217;s new iPad competitor, the <a href="http://www.amazon.com/gp/product/B0051VVOB2" target="_blank">Kindle Fire</a>, today. A quick read through the description shows it has some interesting features, including a custom-built web browser called Silk. One innovation that they claim is that the browser works in conjunction with Amazon&#8217;s EC2 cloud computing platform to speed up the web-surfing experience by doing some computing on your end and some on their end. Seems cool, if it really does make things faster.

Also there&#8217;s this interesting bit:

>  <span></span>
> 
> **Machine Learning**
> 
> Finally, Silk leverages the collaborative filtering techniques and machine learning algorithms Amazon has built over the last 15 years to power features such as “customers who bought this also bought…” As Silk serves up millions of page views every day, it learns more about the individual sites it renders and where users go next. By observing the aggregate traffic patterns on various web sites, it refines its heuristics, allowing for accurate predictions of the next page request. For example, Silk might observe that 85 percent of visitors to a leading news site next click on that site’s top headline. With that knowledge, EC2 and Silk together make intelligent decisions about pre-pushing content to the Kindle Fire. As a result, the next page a Kindle Fire customer is likely to visit will already be available locally in the device cache, enabling instant rendering to the screen.

 <span></span>

That seems like a logical thing for Amazon to do. While the idea of pre-fetching pages is not particularly new, I haven&#8217;t yet heard of the idea of doing data analysis on web pages to predict which things to pre-fetch. One issue this raises in my mind, is that in order to do this, Amazon needs to combine information across browsers, which means your surfing habits will become part of one large mega-dataset. Is that what we want?

On the one hand, Amazon already does some form of this by keeping track of what you buy. But keeping track of every web page you goto and what links you click on seems like a much wider scope.
