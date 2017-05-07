---
id: 4336
title: A glass half full interpretation of the replicability of psychological science
date: 2015-10-01T10:00:53+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_866632043392653
al2fb_facebook_link_time:
  - 2015-10-01T14:00:59+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter-300x300.png
dsq_thread_id:
  - 4183632772
categories:
  - Uncategorized
slug: "a-glass-half-full-interpretation-of-the-replicability-of-psychological-science"
---
<p style="line-height: 18.0pt;">
  <em>tl;dr: 77% of replication effects from the psychology replication study were in (or above) the 95% prediction interval based on the original effect size. This isn't perfect and suggests (a) there is still room for improvement, (b) the scientists who did the replication study are pretty awesome at replicating, (c) we need a better definition of replication that respects uncertainty but (d) the scientific sky isn't falling. We wrote this up in a <a href="http://arxiv.org/abs/1509.08968">paper on arxiv</a>; <a href="https://github.com/jtleek/replication_paper">the code is here.</a> </em>
</p>

<p style="line-height: 18.0pt;">
  <span style="font-size: 12.0pt; font-family: Georgia; color: #333333;">A week or two ago a paper came out in Science on<span class="apple-converted-space"> </span><a href="http://www.sciencemag.org/content/349/6251/aac4716">Estimating the reproducibility of psychological science</a>. The basic behind the study was to take a sample of studies that appeared in a particular journal in 2008 and try to replicate each of these studies. Here I'm using the definition that reproducibility is the ability to recalculate all results given the raw data and code from a study and replicability is the ability to re-do the study and get a consistent result. </span>
</p>

<p style="line-height: 18.0pt;">
  <span style="font-size: 12.0pt; font-family: Georgia; color: #333333;">The paper is pretty incredible and the authors did an amazing job of going back to the original sources and trying to be faithful to the original study designs. I have to admit when I first heard about the study design I was incredibly pessimistic about the results (I suppose grouchy is a natural default state for many statisticians –especially those with sleep deprivation). I mean 2008 was well before the push toward reproducibility had really taken off (Biostatistics was one of the first journals to adopt a policy on reproducible research and that didn't happen <a href="http://biostatistics.oxfordjournals.org/content/10/3/405.full">until 2009</a>). More importantly, the student researchers from those studies had possibly moved on, study populations may change, there could be any number of minor variations in the study design and so forth. I thought the chances of getting any effects in the same range was probably pretty low. </span>
</p>

<p style="line-height: 18.0pt;">
  So when the results were published I was pleasantly surprised. I wasn’t the only one:
</p>

<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    Someone has to say it, but this plot shows that science is, in fact, working. <a href="http://t.co/JUy10xHfbH">http://t.co/JUy10xHfbH</a> <a href="http://t.co/lJSx6IxPw2">pic.twitter.com/lJSx6IxPw2</a>
  </p>
  
  <p>
    &mdash; Roger D. Peng (@rdpeng) <a href="https://twitter.com/rdpeng/status/637009904289452032">August 27, 2015</a>
  </p>
</blockquote>



<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    Looks like psychologists are in a not-too-bad spot on the ROC curves of science (<a href="http://t.co/fPsesCn2yK">http://t.co/fPsesCn2yK</a>) <a href="http://t.co/9rAOdZWvzv">http://t.co/9rAOdZWvzv</a>
  </p>
  
  <p>
    &mdash; Joe Pickrell (@joe_pickrell) <a href="https://twitter.com/joe_pickrell/status/637304244538896384">August 28, 2015</a>
  </p>
</blockquote>



But that was definitely not the prevailing impression that the paper left on social and mass media. A lot of the discussion around the paper focused on the [idea that only 36% of the studies](https://github.com/jtleek/replication_paper/blob/gh-pages/in_the_media.md) had a p-value less than 0.05 in both the original and replication study. But many of the sample sizes were small and the effects were modest. So the first question I asked myself was, "Well what would we expect to happen if we replicated these studies?" The original paper measured replicability in several ways and tried hard to calibrate expected coverage of confidence intervals for the measured effects.

With [Roger](http://www.biostat.jhsph.edu/~rpeng/) and [Prasad](http://www.biostat.jhsph.edu/~prpatil/) we tried a little different approach. We estimated the 95% prediction interval for the replication effect given the original effect size.

[<img class="aligncenter wp-image-4337" src="http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter-300x300.png" alt="pi_figure_nofilter" width="397" height="397" srcset="http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter-1024x1024.png 1024w, http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter.png 1050w" sizes="(max-width: 397px) 100vw, 397px" />](http://simplystatistics.org/wp-content/uploads/2015/10/pi_figure_nofilter.png)

&nbsp;

72% of the replication effects were within the 95% prediction interval and 2 were above the interval (showed a stronger signal in replication in than predicted from original study). This definitely shows that there is still room for improvement in replication of these studies - we would expect 95% of the effects to fall into the 95% prediction interval. But at least my opinion is that 72% (or 77% if you count the 2 above the P.I.) of studies falling in the prediction interval is (a) not bad and (b) a testament to the authors of the reproducibility paper and their efforts to get the studies right.

An important point here is that replication and reproducibility aren't the same thing. When reproducing a study we expect the numbers and figures to be _exactly the same. _But a replication involves recollection of data and is subject to variation and so _we don't expect the answer to be exactly the same in the replication_. This is of course made more confusing by regression to the mean, publication bias, and [the garden of forking paths](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf).  Our use of a prediction interval measures both the variation expected in the original study and in the replication. One thing we noticed when re-analyzing the data is how many of the studies had very low sample sizes. [<img class="aligncenter wp-image-4339" src="http://simplystatistics.org/wp-content/uploads/2015/10/samplesize_figure_nofilter-300x300.png" alt="samplesize_figure_nofilter" width="450" height="450" srcset="http://simplystatistics.org/wp-content/uploads/2015/10/samplesize_figure_nofilter-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/10/samplesize_figure_nofilter-1024x1024.png 1024w, http://simplystatistics.org/wp-content/uploads/2015/10/samplesize_figure_nofilter-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/10/samplesize_figure_nofilter.png 1050w" sizes="(max-width: 450px) 100vw, 450px" />](http://simplystatistics.org/wp-content/uploads/2015/10/samplesize_figure_nofilter.png)

&nbsp;

Sample sizes were generally bigger in the replication, but often very low regardless. This makes it more difficult to disentangle what didn't replicate from what is just expected variation for a small sample size study.  The point remains whether those small studies should be trusted in general, but for the purposes of measuring replication it makes the problem more difficult.

One thing I have been thinking about a lot and this study drove home is that if we are measuring replication we need a definition that incorporates uncertainty directly. Suppose that you collect a data set **D0** from an original study and  **D1** from a replication. Then replication means that the data from a study replicates if **D0 ~ F **and **D1 ~ F. **Informally, if the data are generated from the same distribution in both experiments then the study replicates. To get an estimate you apply a pipeline to the data set to get an estimate **e0 = p(D0). **If the study is also reproducible than **p****()** is the same for both studies and **p****(D0) ~ G **and **p****(D1)** **~ G**, subject to some conditions on **p****(). **

One interesting consequence of this definition is that each complete replication data set represents _only a single data point_ for measuring replication. To measure replication with this definition you either need to make assumptions about the data generating distribution for **D0** and **D1** or you need to perform a complete replication of a study many times to determine if it replicates. However, it does mean that we can define replication even for studies with very small number of replicates as the data generating distribution may be arbitrarily variable in each case.

Regardless of this definition I was excited that the [OSF ](https://osf.io/)folks did the study and pulled it off as well as they did and was a bit bummed about the most common  reaction. I think there is an easy narrative that "science is broken" which I think isn't a positive thing for a number of reasons. I love the way that {reproducibility/replicability/open science/open publication} are becoming more and more common, but often think we fall into the same trap in wanting to report these results as clear cut as we do when reporting exaggerations or oversimplifications of scientific discoveries in headlines. I'm excited to see how these kinds of studies look in 10 years when Github/open science/pre-prints/etc. are all the standards.
