---
id: 1825
title: The limiting reagent for big data is often small, well-curated data
date: 2013-09-23T10:32:29+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_545772485478612
al2fb_facebook_link_time:
  - 2013-09-23T14:32:36+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1789541762
categories:
  - Uncategorized
slug: "the-limiting-reagent-for-big-data-is-often-small-well-curated-data"
---
I've been working on "big" data in genomics since I was a first year student in graduate school (a longer time than I'd rather admit). At the time, "big" meant [microarray studies with a couple of hundred patients](http://genomics.princeton.edu/storeylab/trauma/). Of course, that is now a really small drop in the pond compared to the huge sequencing data sets, [like the one](http://www.nature.com/nature/journal/vaop/ncurrent/full/nature12531.html) published recently in Nature.

Despite the exploding size of these genomic data sets, the discovery process is almost always limited by the quality and quantity of useful metadata that go along with them. In the trauma study I referenced above, the genomic data was both costly and hard to collect. But the bigger, more impressive feat was to collect the data from trauma patients at relatively precise time points after they had been injured. Along with the genomic data a host of clinical data was also collected and aligned with the genomic data.

_The key insights derived from the data were the relationships between low-dimensional and high-dimensional measurements. _

This is actually relatively common:

  * In computer vision you need quality labeled images to use as a training set (this type of manual labeling is so common it forms the basis for major citizen science projects like [zooniverse](https://www.zooniverse.org/))
  * In genome-wide association studies you need accurate phenotypes.
  * In the analysis of social networks like the Framingham Heart Survey, you need to [collect data on obesity levels](http://www.nejm.org/doi/full/10.1056/NEJMsa066082), etc.

One common feature of these studies is that they are examples of what computer scientists call _[supervised learning](http://en.wikipedia.org/wiki/Supervised_learning). _Most hypothesis-driven research falls into this type of study. It is important to recognize that these studies can only work with painstaking and careful collection of small data. So in many cases, the limits to the insights we can obtain from big data are imposed by [how much schlep](http://simplystatistics.org/2012/05/28/schlep-blindness-in-statistics/) we are willing to put in to get small data.

&nbsp;

&nbsp;

&nbsp;
