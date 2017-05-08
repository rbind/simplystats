---
author: Jeff Leek
date: 2016-08-24
title: Interview with COPSS award winner Nicolai Meinshausen.
slug: "meinshausen-copss"
---

_Editor’s Note: We are again pleased to interview the COPSS President’s award winner. The COPSS Award is one of the most prestigious in statistics, sometimes called the Nobel Prize in statistics. This year the award went to Nicolai Meinshausen from ETH Zurich. He is known for his work in causality, high-dimensional statistics, and machine learning. Also see our past COPSS award interviews with [John Storey](http://simplystatistics.org/2015/08/25/interview-with-copss-award-winner-john-storey/) and [Martin Wainwright](http://simplystatistics.org/2014/08/18/interview-with-copss-award-winner-martin-wainright/)._


![Nicolai Meinshausen](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/meinshausen.png)


## Do you consider yourself to be a statistician, data scientist, machine learner, or something else?

Perhaps all of the above. If you forced me to pick one, then statistician but  I hope we will soon come to a point where these distinctions do not matter much any more.


## How did you find out you had won the COPSS award? 

Jeremy Taylor called me. I know I am expected to say I did not expect it but that was indeed the case and it was a genuine surprise.

## How do you see the fields of causal inference and high-dimensional statistics merging? 

Causal inference is already very challenging in the low-dimensional case - if understood as data for which the number of observations exceeds 
the number of variables. There are commonalities between high-dimensional statistics and the subfield of causal discovery, however, as we try to recover a sparse underlying structure from data in both cases
(say when trying to reconstruct a gene network from 
observational and intervention data). The interpretations are just slightly different. A further difference is the implicit optimization. High-dimensional estimators can often be framed as convex optimization problems and the question is whether causal discovery can or should be 
pushed in this direction as well. 

 

## Can you explain a little about how you can infer causal effects from inhomogeneous data? 

Why do we want a causal model in the first place? In most cases the benefit of a causal over a regression model
is that the predictions of a causal model continue to be valid even if we intervene on the variables we use for prediction.

The inference we proposed turns this around and is looking for all models that are invariant in the sense that they give the same prediction accuracy across a number of different settings or environments. If we just have observational data, then this invariance 
holds for all models but if the data are inhomogeneous, certain models can be discarded since they work better in one environment than in another and can thus not be causal. If all models that show invariance use a certain variable, we can claim that the variable in question 
has a causal effect (while controlling type I error rates) and construct confidence intervals for the strength of the effect. 



## You have worked on studying the effects of climate change - do you think statisticians can play an important role in this debate? 

To a certain extent. I have worked on several projects with physicists and the general caveat is  that physicists are in general quite advanced in their methodology already and have quite a good understanding  of the relevant statistical concepts. Biology is thus maybe a field where even more external input is required. Then again, it saves one from having to calculate t-tests in collaborations with physicists and just the interestingand challenging problems are left.  

 

## What advice would you give young statisticians getting into the discipline right now?

First I would say that they have made a good choice since these are interesting times for the field with many  challenging and relevant problems still open and unsolved (but not completely out of reach either). 
I think its important to keep an open mind and read as much literature as possible from neighbouring fields. My personal experience has been that it is very beneficial  to get involved in some scientific collaborations.


## What sorts of things is your group working on these days?

Two general themes: the first is what people would call more classical machine learning. For example, how can we detect interactions in large-scale datasets in sub-quadratic time? Secondly, we are trying to extend the invariance approach to causal inference
to more general settings, for example allowing for nonlinearities and hidden variables while at the same time
improving the computational aspects. 
