---
id: 775
title: "The scientific reasons it is not helpful to study the Newtown shooter's DNA"
date: 2013-01-03T10:10:46+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_442157589173436
al2fb_facebook_link_time:
  - 2013-01-03T15:10:50+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1006252706
categories:
  - Uncategorized
tags:
  - genomics
  - inference
  - popular press
slug: "the-scientific-reasons-it-is-not-helpful-to-study-the-newtown-shooters-dna"
---
The Connecticut Medical Examiner [has asked to sequence](http://www.theatlanticwire.com/technology/2012/12/adam-lanza-dna-test/60371/) and study the DNA of the recent Newtown shooter. I've been seeing this pop up over the last few days on a lot of [popular media sites](http://www.businessinsider.com/plans-to-study-adam-lanzas-dna-splits-scientific-community-2012-12), where they mention some objections scientists (or geneticists) may have to this "scientific" study. But I haven't seen the objections explicitly laid out anywhere. So here are mine.

**Ignoring the fundamentals of the genetics of complex disease:** If the violent behavior of the shooter has any genetic underpinning, it is complex. If you only look at one person's DNA, without a clear behavior definition (violent? mental disorder? etc.?) it is impossible to assess important complications such as [penetrance](http://en.wikipedia.org/wiki/Penetrance), [epistasis](http://en.wikipedia.org/wiki/Epistasis), and [gene-environment interactions](http://en.wikipedia.org/wiki/Gene%E2%80%93environment_interaction), to name a few. These make statistical analysis incredibly complicated even in huge, well-designed studies.

**Small Sample Size**:  One person hit on the issue that is maybe the biggest reason this is a waste of time/likely to lead to incorrect results. _You can't draw a reasonable conclusion about any population by [looking at only one individual](https://twitter.com/drng/status/283692936930152448). _This is actually a fundamental component of [statistical inference](http://en.wikipedia.org/wiki/Statistical_inference). The goal of statistical inference is to take a small, representative sample and use data from that sample to say something about the bigger population. In this case, there are two reasons that the usual practice of statistical inference can't be applied: (1) only one individual is being considered, so we can't measure anything about how variable (or accurate) the data are, and (2) we've picked one, incredibly high-profile, and almost certainly not representative, individual to study.

**Multiple testing/data dredging: **The small sample size problem is compounded by the fact that we aren't looking at just one or two of the shooter's genes, but rather the whole genome. To see why making statements about violent individuals based on only one person's DNA is a bad idea, think about the [20,000 genes in a human body](http://news.bbc.co.uk/2/hi/science/nature/3760766.stm). Let's suppose that only one of the genes causes violent behavior (it is definitely more complicated than that) and that there is no environmental cause to the violent behavior (clearly false). Furthermore, suppose that if you have the bad version of the violent gene you will do something violent in your life (almost definitely not a sure thing).

Now, even with all these simplifying (and incorrect) assumptions for each gene you flip a coin with a different chance of being heads. The violent gene turned up tails, but so did a large number of other genes. If we compare the set of genes that came up tails to another individual, they will have a huge number in common in addition to the violent gene. So based on this information, you would have no idea which gene causes violence even in this hugely simplified scenario.

**Heavy reliance on prior information/intuition**: This is a supposedly scientific study, but the small sample size/multiple testing problems mean any conclusions from the data will be very very weak. The only thing you could do is take the set of genes you found and then rely on previous studies to try to determine which one is the "violence gene". But now you are being guided by intuition, guesswork, and a bunch of studies that may or may not be relevant. The result is that more than likely you'd end up on the wrong gene.

The result is that it is highly likely that no solid statistical information will be derived from this experiment. Sometimes, just because the technology exists to run an experiment, doesn't mean that experiment will teach us anything.
