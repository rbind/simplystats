---
id: 738
title: The value of re-analysis
date: 2012-12-18T11:58:28+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_435398679849327
al2fb_facebook_link_time:
  - 2012-12-18T16:58:31+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 981030074
categories:
  - Uncategorized
tags:
  - cook
  - data analysis
  - king
  - reproducible research
  - retyping
slug: "the-value-of-re-analysis"
---
I just saw [this really nice post](http://www.johndcook.com/blog/2012/12/18/the-value-of-typing-code/) over on John Cook's blog. He talks about how it is a valuable exercise to re-type code for examples you find in a book or on a blog. I completely agree that this is a good way to learn through osmosis, learn about debugging, and often pick up the reasons for particular coding tricks (this is how I learned about vectorized calculations in Matlab, by re-typing and running my advisors code back in my youth).

In a more statistical version of this idea, Gary King has proposed [reproducing the analysis](http://gking.harvard.edu/gking/papers) in a published paper as a way to get a paper of your own.  You can figure out the parts that a person did well and the parts that you would do differently, maybe finding enough insight to come up with your own new paper. But I think this level of replication involves actually two levels of thinking:

  1. Can you actually reproduce the code used to perform the analysis?
  2. Can you solve the "[paper as puzzle](http://www.perlsteinlab.com/blog/papers-as-puzzles)" exercise proposed by Ethan Perlstein over at his site. Given the results in the paper, can you come up with the story?

Both of these things require a bit more "higher level thinking" than just re-running the analysis if you have the code. But I think even the seemingly "low-level" task of just retyping and running the code that is used to perform a data analysis can be very enlightening. The problem is that this code, in many cases, does not exist. But that is starting to change. If you check out [Rpubs](http://www.rpubs.com/) or [RunMyCode](http://www.runmycode.org/CompanionSite/) or even the right parts of [Figshare](http://figshare.com/) you can find data analyses you can run through and reproduce.

The only downside is there is currently no measure of quality on these published analyses. It would be great if people could focus their time re-typing only good data analyses, rather than one at random. Or, as a guy once (almost) [said](http://www.quoteworld.org/quotes/8414), "Data analysis practice doesn't make perfect, perfect data analysis practice makes perfect."
