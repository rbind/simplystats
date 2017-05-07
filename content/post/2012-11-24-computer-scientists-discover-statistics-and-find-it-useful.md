---
id: 613
title: Computer scientists discover statistics and find it useful
date: 2012-11-24T15:53:34+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_426568187399043
al2fb_facebook_link_time:
  - 2012-11-24T20:53:38+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 942477065
categories:
  - Uncategorized
slug: "computer-scientists-discover-statistics-and-find-it-useful"
---
This [article in the New York Times today](http://www.nytimes.com/2012/11/24/science/scientists-see-advances-in-deep-learning-a-part-of-artificial-intelligence.html?smid=pl-share) describes some of the advances that computer scientists have made in recent years.

> The technology, called deep learning, has already been put to use in services like Apple’s Siri virtual personal assistant, which is based on Nuance Communications’ speech recognition service, and in Google’s Street View, which uses machine vision to identify specific addresses.
> 
> But what is new in recent months is the growing speed and accuracy of deep-learning programs, often called artificial neural networks or just “neural nets” for their resemblance to the neural connections in the brain.

Deep learning? Really?

Okay, names aside, there are a few things to say here. First, the advances described in the article are real--I think that's clear. There's a lot of pretty cool stuff out there (including Siri, in my opinion) coming from the likes of Google, Microsoft, Apple, and many others and, frankly, I appreciate all of it. I hope to have my own self-driving car one day.

The question is how did we get here? What worries me about this article and many others is that you can get the impression that there were tremendous advances in the technology/methods used. But I find that hard to believe given that the methods that are often discussed in these advances are methods that have been around for quite a while (neural networks, anyone?). The real advance has been in the incorporation of data into these technologies and the use of _statistical models_. The interesting thing is not that the data are big, it's that we're using data at all.

Did Nate Silver produce a better prediction of the election than the pundits because he had better models or better technology? No, it's because he bothered to use data at all. This is not to downplay the sophistication of Silver's or others' approach, but [many](http://electoral-vote.com/) [others](http://votamatic.org/) [did](http://www.huffingtonpost.com/news/pollster/) [what](http://www.realclearpolitics.com/epolls/2012/president/2012_elections_electoral_college_map.html) [he](http://polltracker.talkingpointsmemo.com/) [did](http://election.princeton.edu/) (presumably using different methods--I don't think there was collaboration) and [more or less got the same results](http://fivethirtyeight.blogs.nytimes.com/2012/10/31/oct-30-what-state-polls-suggest-about-the-national-popular-vote/). So the variation across different models is small, but the variation between using data vs. not using data is, well, big. Peter Norvig notes this in his [talk about how Google uses data for translation](http://simplystatistics.org/2012/03/16/the-unreasonable-effectiveness-of-data-a-talk/). An area that computational linguists had been working on for decades was advanced dramatically by a ton of data and (a variation of) Bayes' Theorem. I may be going out on a limb here, but I don't think it was Bayes' Theorem that did the trick. But there will probably be an article in the New York Times soon about how Bayes' Theorem is revolutionizing artificial intelligence. Oh wait, [there already was one](http://www.nytimes.com/2008/05/03/technology/03koller.html).

It may sound like I'm trying to bash the computer scientists here, but I'm not. It would be too too easy for me to write a post complaining about how the computer scientists have stolen the ideas that statisticians have been using for decades and are claiming to have discovered new approaches to everything. But that's exactly what is happening and _good for them_.

I don't like to frame everything as an us-versus-them scenario, but the truth is the computer scientists are winning and the statisticians are losing. The reason is that they've taken our best ideas and used them to solve problems that matter to people. Meanwhile, we should have been stealing the computer scientists' best ideas and using them to solve problems that matter to people. But we didn't. And now we're playing catch-up, and not doing a particularly good job of it.

That said, I believe there's still time for statistics to play a big role in "big data". We just have to choose to do it. Borrowing ideas from other fields is good--that's why it's called "re"search, right? Statisticians shouldn't be shy about it. Otherwise, all we'll have left to do is complain about how all those people took what we'd been working on for decades and...made it useful.
