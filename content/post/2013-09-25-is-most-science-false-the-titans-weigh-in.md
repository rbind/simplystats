---
id: 1896
title: Is most science false? The titans weigh in.
date: 2013-09-25T11:06:11+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_546578622064665
al2fb_facebook_link_time:
  - 2013-09-25T15:06:17+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1795992267
categories:
  - Uncategorized
slug: "is-most-science-false-the-titans-weigh-in"
---
Some of you may recall that a few months ago my colleague and I posted a [paper](http://arxiv.org/pdf/1301.3718.pdf) to the ArXiv on estimating the rate of false discoveries in the scientific literature. The paper was picked up by the [Tech Review](http://m.technologyreview.com/view/510126/the-statistical-puzzle-over-how-much-biomedical-research-is-wrong/) and led to a post on [Andrew G.'s blog](http://andrewgelman.com/2013/01/24/i-dont-believe-the-paper-empirical-estimates-suggest-most-published-medical-research-is-true-that-is-the-claim-may-very-well-be-true-but-im-not-at-all-convinced-by-the-analysis-being-used/), [on Discover blogs](http://blogs.discovermagazine.com/neuroskeptic/2013/01/24/is-medical-science-really-86-true/#.UkLqWWTXis0), and [on our blog](http://simplystatistics.org/2013/01/24/why-i-disagree-with-andrew-gelmans-critique-of-my-paper-about-the-rate-of-false-discoveries-in-the-medical-literature/). One other interesting feature of our paper was that we put all the [code/data we collected on Github](https://github.com/jtleek/swfdr).

At the time this whole thing blew up our paper still wasn't published. After the explosion of interest we submitted the paper to Biostatistics. They liked the paper and actually solicited formal discussion of our approach by other statisticians. We were then allowed to respond to the discussions.

Overall, it was an awesome experience at Biostatistics - they did a great job of doing a thorough, but timely, review. They  got some amazing discussants. Finally, they made our paper open-access. So much goodness. (conflict of interest disclaimer - I am an associate editor for Biostatistics)

Here are the papers that came out which I think are all worth reading:

  * [Our paper](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt007.full)
  * [Discussion by Benjamini and colleagues](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt032.full)
  * [Discussion by D.R. Cox (!)](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt033.full)
  * [Discussion by Gelman and colleagues](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt034.full)
  * [Discussion by Goodman](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt035.full)
  * [Discussion by Ioannidis](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt036.full)
  * [Discussion by Schuemie and colleagues](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt037.full)
  * [Our rejoinder](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt038.full)

I'm very proud of our paper and the rejoinder. The discussants were very passionate and added a huge amount of value, particularly in the collection/analysis of our data and additional data they collected.

I think it is 100% worth reading all of the papers over at Biostatistics but for the tldr crowd here are some take home messages I have from the experience and summarizing the discussion above:

  1. Posting to ArXiv can be a huge advantage for a paper like ours but be ready for the heat.
  2. Biostatistics (the journal) is awesome. Great job of reviewing/editing in a timely way and great job of organizing the discussion!
  3. When talking about the science-wise false discovery rate you have to bring data.
  4. We proposed the first formal framework for evaluating the science-wise false discovery rate which lots of people care about (and there are a ton of ideas in the discussion about ways to estimate it better).
  5. I think based on our paper and the discussion that it is pretty unlikely that most published research is false. But that probably varies by your definition of false/what you mean by most/the journal type/the field you are considering/the analysis type/etc.
  6. This is a question people care about. _A lot_.

Finally, I think this is the most important quote from our rejoinder:

> We are encouraged, however, that several of the discussants collected additional data to evaluate the impact of the above decisions on the SWFDR estimates. The discussion illustrates the powerful way that data collection can be used to move the theoretical and philosophical discussion on to a more concrete, scientific footing—discussing the specific strengths and weaknesses of a particular empirical approach. Moreover, the interesting additional data collected by the discussants on study types, journals, and endpoints demonstrate that data beget data and lead to a stronger and more directed conversation.
