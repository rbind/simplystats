---
id: 1078
title: The importance of simulating the extremes
date: 2013-03-06T12:35:04+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_470118469710681
al2fb_facebook_link_time:
  - 2013-03-06T17:35:09+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1121473950
categories:
  - Uncategorized
tags:
  - cook
  - opinion
  - simulation
slug: "the-importance-of-simulating-the-extremes"
---
Simulation is commonly used by statisticians/data analysts to: (1) [estimate variability/improve predictors](http://en.wikipedia.org/wiki/Bootstrapping_(statistics)), (2) [to evaluate the space of potential outcomes](http://en.wikipedia.org/wiki/Monte_Carlo_method), and (3) to evaluate the properties of new algorithms or procedures. Over the last couple of days, discussions of simulation have popped up in a couple of different places.

First, the reviewers of a paper that my student is working on had asked a question about the behavior of the method in different conditions. I mentioned in passing, that I thought it was a good idea to simulate some cases where our method will definitely break down.

I also saw this post by John Cook about simple/complex models. He [raises the really important point](http://www.johndcook.com/blog/2013/03/05/data-calls-the-models-bluff/) that increasingly complex models built on a canonical, small, data set can fool you. You can make the model more and more complicated - but in other data sets the assumptions might not hold and the model won't generalize. Of course, simple models can have the same problems, but generally simple models will fail on small data sets in the same way they would fail on larger data sets (in my experience) - either they work or they don't.

These two ideas got me thinking about why I like simulation. Some statisticians, particularly applied statisticians, aren't fond of simulation for evaluating methods. I think the reason is that you can always simulate a situation that meets all of your assumptions and make your approach look good. Real data rarely conform to model assumptions and so are harder to "trick". On the other hand, I really like simulation, it can reveal a lot about how and when a method will work well and it allows you to explore scenarios - particularly for new or difficult to obtain data.

Here are the simulations I like to see:

  1. **Simulation where the assumptions are true** There are a surprising number of proposed methods/analysis procedures/analyses that fail or perform poorly even when the model assumptions hold. This could be because the methods overfit, have a bug, are computationally unstable, are on the wrong place on the bias/variance tradeoff curve, etc. etc. etc. I always do at least one simulation for every method where the answer should be easy to get, because I know if I don't get the right answer, it is back to the drawing board.
  2. **Simulation where things should definitely fail** I like to try out a few realistic scenarios where I'm pretty sure my model assumptions won't hold and the method should fail. This kind of simulation is good for two reasons: (1) sometimes I'm pleasantly surprised and the model will hold up and (2) (the more common scenario) I can find out where the model assumption boundaries are so that I can give concrete guidance to users about when/where the method will work and when/where it will fail.

The first type of simulation is easy to come up with - generally you can just simulate from the model. The second type is much harder. You have to creatively think about reasonable ways that your model can fail. I've  found that using real data for simulations can be the best way to start coming up with ideas to try - but I usually find that it is worth building on those ideas to imagine even more extreme circumstances. Playing the [evil demon](http://en.wikipedia.org/wiki/Evil_demon) for my own methods often leads me to new ideas/improvements I hadn't thought of before. It also helps me to evaluate the work of other people - since I've tried to explore the contexts where methods likely fail.

In any case, if you haven't simulated the extremes I don't think you really know how your methods/analysis procedures are working.
