---
id: 4643
title: Data handcuffs
date: 2016-02-10T15:38:37+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_922229204499603
al2fb_facebook_link_time:
  - 2016-02-10T20:38:44+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4568535533
categories:
  - Uncategorized
slug: "data-handcuffs"
---
A few years ago, if you asked me what the top skills I got asked about for students going into industry, I'd definitely have said things like data cleaning, data transformation, database pulls, and other non-traditional statistical tasks. But as companies have progressed from the point of storing data to actually wanting to do something with it, I would say one of the hottest skills is understanding and dealing with data from randomized trials.

In particular I see data scientists talking more about [A/B testing](https://medium.com/@InVisionApp/a-b-and-see-a-beginner-s-guide-to-a-b-testing-a16406f1a239#.p7hoxirwo), [sequential stopping rules](http://varianceexplained.org/r/bayesian-ab-testing/), [hazard regression](https://twitter.com/hspter/status/696820603945414656) and other ideas  that are really common in Biostatistics, which has traditionally focused on the analysis of data from designed experiments in biology.

I think it is great that companies are choosing to do experiments, as this [still remains](http://simplystatistics.org/2013/07/15/yes-clinical-trials-work/) the gold standard for how to generate knowledge about causal effects. One interesting new development though is the extreme lengths it appears some organizations are going to to be "data-driven".  They make all decisions based on data they have collected or experiments they have performed.

But data mostly tell you about small scale effects and things that happened in the past. To be able to make big discoveries/improvements requires (a) having creative ideas that are not data supported and (b) trying them in experiments to see if they work. If you get too caught up in experimenting on the same set of conditions you will inevitably asymptote to a maximum and quickly reach diminishing returns. This is where the data handcuffs come in. Data can only tell you about the conditions that existed in the past, they often can't predict conditions in the future or ideas that may work out or might not.

In an interesting parallel to academic research a good strategy appears to be: (a) trying a bunch of things, including some things that have only a pretty modest chance of success, (b) doing experiments early and often when trying those things, and (c) getting very good at recognizing failure quickly and moving on to ideas that will be fruitful. The challenges are that in part (a) it is often difficult to generate really knew ideas, especially if you are already doing something that has had any level of success. There will be extreme pressure not to change what you are doing. In part (c) the challenge is that if you discard ideas too quickly you might miss a big opportunity, but if you don't discard them quickly enough you will sink a lot of time/cost into utlimately not very fruitful projects.

Regardless, almost all of the most [interesting projects](http://simplystatistics.org/2013/09/25/is-most-science-false-the-titans-weigh-in/) I've worked on in my life were not driven by data that suggested they would be successful. They were often risks where the data either wasn't in, or the data supported not doing at all. But as a statistician I decided to straight up ignore the data and try anyway. Then again, these ideas have also been the sources of [my biggest flameouts](http://simplystatistics.org/2012/01/11/healthnewsrater/).
