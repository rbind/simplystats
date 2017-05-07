---
id: 3967
title: A blessing of dimensionality often observed in high-dimensional data sets
date: 2015-04-09T15:19:13+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_792919457430579
al2fb_facebook_link_time:
  - 2015-04-09T19:19:20+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3668656950
categories:
  - Uncategorized
slug: "a-blessing-of-dimensionality-often-observed-in-high-dimensional-data-sets"
---
[](http://www.jstatsoft.org/v59/i10/paper) have one observation per row and one variable per column.  Using this definition, big data sets can be either:

  1. **Wide** - a wide data set has a large number of measurements per observation, but fewer observations. This type of data set is typical in neuroimaging, genomics, and other biomedical applications.
  2. **Tall** - a tall data set has a large number of observations, but fewer measurements. This is the typical setting in a large clinical trial or in a basic social network analysis.

The [curse of dimensionality](http://en.wikipedia.org/wiki/Curse_of_dimensionality) tells us that estimating some quantities gets harder as the number of dimensions of a data set increases - as the data gets taller or wider. An example of this was [nicely illustrated](http://simplystatistics.org/2014/10/24/an-interactive-visualization-to-teach-about-the-curse-of-dimensionality/) by my student Prasad (although it looks like his quota may be up on Rstudio).

For wide data sets there is also a blessing of dimensionality. The basic reason for the blessing of dimensionality is that:

> No matter how many new measurements you take on a small set of observations, the number of observations and all of their characteristics are fixed.

As an example, suppose that we make measurements on 10 people. We start out by making one measurement (blood pressure), then another (height), then another (hair color) and we keep going and going until we have one million measurements on those same 10 people. The blessing occurs because the measurements on those 10 people will all be related to each other. If 5 of the people are women and 5 or men, then any measurement that has a relationship with sex will be highly correlated with any other measurement that has a relationship with sex. So by knowing one small bit of information, you can learn a lot about many of the different measurements.

This blessing of dimensionality is the key idea behind many of the statistical approaches to wide data sets whether it is stated explicitly or not. I thought I'd make a very short list of some of these ideas:

**1. Idea: **[De-convolving mixed observations from high-dimensional data. ](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3841439/)

**How the blessing plays a role: **The measurements for each observation are assumed to be a mixture of values measured from different observation types. The proportion of each observation type is assumed to be fixed across measurements, so you can take advantage of the multiple measurements to estimate the mixing percentage and perform the deconvolution. ([Wenyi Wang](http://odin.mdacc.tmc.edu/~wwang7/) came and gave an excellent seminar on this idea at JHU a couple of days ago, which inspired this post).

**2. Idea:** [The two groups model for false discovery rates](http://biostatistics.oxfordjournals.org/content/5/2/155.short).

**How the blessing plays a role: ** The models assume that a hypothesis test is performed for each observation and that the probability any observation is drawn from the null, the null distribution, and the alternative distributions are common across observations. If the null is assumed known, then it is possible to use the known null distribution to estimate the common probability that an observation is drawn from the null.

&nbsp;

**3. Idea: **[Empirical Bayes variance shrinkage for linear models](http://www.degruyter.com/view/j/sagmb.2004.3.issue-1/sagmb.2004.3.1.1027/sagmb.2004.3.1.1027.xml)

**How the blessing plays a role: ** A linear model is fit for each observation and the means and variances of the log ratios calculated from the model are assumed to follow a common distribution across observations. The method estimates the hyper-parameters of these common distributions and uses them to adjust any individual measurement's estimates.

&nbsp;

**4. Idea: **[Surrogate variable analysis](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.0030161)

**How the blessing plays a role: ** Each observation is assumed to be influenced by a single variable of interest (a primary variable) and multiple unmeasured confounders. Since the observations are fixed, the values of the unmeasured confounders are the same for each measurement and a supervised PCA can be used to estimate surrogates for the confounders. ([see my JHU job talk for more on the blessing](http://www.slideshare.net/jtleek/jhu-feb2009))

&nbsp;

The blessing of dimensionality I'm describing here is related to the idea that [Andrew Gelman refers to in this 2004 post.](http://andrewgelman.com/2004/10/27/the_blessing_of/)  Basically, since increasingly large number of measurements are made on the same observations there is an inherent structure to those observations. If you take advantage of that structure, then as the dimensionality of your problem increases you actually get **better estimates** of the structure in your high-dimensional data - a nice blessing!
