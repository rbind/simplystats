---
title: The four eras of data
author: Jeff Leek
comments: true
slug: "the-four-eras-of-data"
date: 2016-12-16
---

I'm teaching [a class in data science](http://jtleek.com/advdatasci16/) for our masters and PhD students here at Hopkins. I've been teaching a variation on this class since 2011 and over time I've introduced a number of new components to the class: high-dimensional data methods (2011), data manipulation and cleaning (2012), real, possibly not doable data analyses (2012,2013), peer reviews (2014), building [swirl tutorials](http://swirlstats.com/) for data analysis techniques (2015), and this year building data analytic web apps/R packages.

I'm the least efficient teacher in the world, probably because I'm very self conscious about my teaching. So I always feel like I have to completely re-do my lecture materials every year I teach the class (I know, I know I'm a dummy). This year I was reviewing my notes on high-dimensional data and I was looking at this breakdown of the three eras of statistics from Brad Efron's [book](http://statweb.stanford.edu/~ckirby/brad/other/2010LSIexcerpt.pdf):

> 1. The age of Quetelet and his successors, in which huge census-level data
sets were brought to bear on simple but important questions: Are there
more male than female births? Is the rate of insanity rising?
2. The classical period of Pearson, Fisher, Neyman, Hotelling, and their
successors, intellectual giants who developed a theory of optimal inference
capable of wringing every drop of information out of a scientific
experiment. The questions dealt with still tended to be simple — Is treatment
A better than treatment B? — but the new methods were suited to
the kinds of small data sets individual scientists might collect.
3. The era of scientific mass production, in which new technologies typi-
fied by the microarray allow a single team of scientists to produce data
sets of a size Quetelet would envy. But now the flood of data is accompanied
by a deluge of questions, perhaps thousands of estimates or
hypothesis tests that the statistician is charged with answering together;
not at all what the classical masters had in mind.

While I think this is a useful breakdown, I realized I think about it in a slightly different way as a statistician. My breakdown goes more like this:

1. __The era of not much data__ This is everything prior to about 1995 in my field. The era when we could only collect a few measurements at a time. The whole point of statistics was to try to optimaly squeeze information out of a small number of samples - so you see methods like maximum likelihood and minimum variance unbiased estimators being developed. 
2. __The era of lots of measurements on a few samples__ This one hit hard in biology with the development of the microarray and the ability to measure thousands of genes simultaneously. This is the same statistical problem as in the previous era but with a lot more noise added. Here you see the development of methods for multiple testing and regularized regression to separate signals from piles of noise. 
3. __The era of a few measurements on lots of samples__ This era is overlapping to some extent with the previous one. Large scale collections of data from EMRs and Medicare are examples where you have a huge number of people (samples) but a relatively modest number of variables measured. Here there is a big focus on statistical methods for knowing how to model different parts of the data with hierarchical models and separating signals of varying strength with model calibration. 
4. __The era of all the data on everything.__ This is an era that currently we as civilians don't get to participate in. But Facebook, Google, Amazon, the NSA and other organizations have thousands or millions of measurements on hundreds of millions of people. Other than just sheer computing I'm speculating that a lot of the problem is in segmentation (like in era 3) coupled with avoiding crazy overfitting (like in era 2). 

I've focused here on the implications of these eras from a statistical modeling perspective, but as we discussed in my class, era 4 coupled with advances in machine learning methods mean that there are social, economic, and behaviorial implications of these eras as well. 


