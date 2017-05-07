---
id: 151
title: What is the most important code you write?
date: 2012-07-12T13:50:40+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/27049611121/what-is-the-most-important-code-you-write
tumblr_simplystatistics_id:
  - 27049611121
dsq_thread_id:
  - 933844444
categories:
  - Uncategorized
slug: "what-is-the-most-important-code-you-write"
---
These days, like most people, the research I do involves writing a lot of code. A lot of it. Usually, you need some code to

  1. Process the data to take it from its original format to the format that&#8217;s convenient for you
  2. Run exploratory data analyses creating plots, calculating summary statistics, etc.
  3. Try statistical model 1
  4. Try statistical model 2
  5. Try statistical model 3
  6. &#8230;
  7. Fit final statistical model; if this involves MCMC then there&#8217;s usually a ton of code to do this
  8. Make some more plots of results, make tables, more summary statistics of output

My question is, of all this code, which is the most important? The code that fits the final model? The code that does that summarizes results? Often you just see the code that fit the final statistical model and maybe some of the code that summarizes the results. The code for fitting all of the previous models and doing the exploratory analysis is lost in the ether (or at least the version control ether). Now, I&#8217;m not saying I always want to see all that other code. Usually, I am just interested in the final model.

The point is that the code for the final model only represents a small fraction of the work that was done to get there. This work is the bread and butter of applied statistics and it is essentially thrown out. Of course, life would be much easier if someone would just _tell_ me what the final model would be every time. Then I would just fit it! But nooooo, hundreds or thousands of lines of code and numerous judgment calls go into figuring out what that last model is going to be. 

Yet when you read a paper, it more or less looks like the final model appeared out of thin air because there&#8217;s no space/time to tell the story about everything that came before. I would say the same is true for theoretical statistics too. It&#8217;s not as if theorems/proofs appear out of nowhere. Hard work goes into figuring out both the right theorem to prove and the right way to prove it.

But I would argue that there&#8217;s one key difference between theoretical and applied statistics in this regard: Everyone seems to accept that theoretical statistics is hard. So when you see a theorem/proof in a paper you consciously or unconsciously realize that it must have been hard work to arrive at that point. But in a great applied statistics paper, all you get is an interesting scientific question and some graphs/tables that provide an answer. Who cares about that?

Seriously though, even for a seasoned applied statistician, it&#8217;s sometimes easy to forget that everything looks easy once someone else has done all the work. It&#8217;s not clear to me whether we just need to change expectations or if we need a different method for communicating the effort involved (or both). Making research reproducible would be one approach as it would require all the code for the work be available. But that&#8217;s mostly just &#8220;final model&#8221; stuff plus some data processing code. Going one step further might require that a git repository be made available. That way you could see all the history in addition to the final stuff. I&#8217;m guessing there would be some resistance to universally adopting that approach!

Another approach might be to allow applied stat papers to go into more of the details about the process. With strict space limitations these days, it&#8217;s often hard enough to talk about the final model. But in some cases I think I would enjoy reading the story behind the story. Some of that &#8220;backstory&#8221; would make for good instructional material for applied stat classes.
