---
id: 3797
title: If you were going to write a paper about the false discovery rate you should have done it in 2002
date: 2015-01-16T10:58:04+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_756088597780332
al2fb_facebook_link_time:
  - 2015-01-16T15:58:10+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/01/citations-boxplot.png
dsq_thread_id:
  - 3426241140
categories:
  - Uncategorized
slug: "if-you-were-going-to-write-a-paper-about-the-false-discovery-rate-you-should-have-done-it-in-2002"
---
People often talk about academic superstars as people who have written highly cited papers. Some of that has to do with people's genius, or ability, or whatever. But one factor that I think sometimes gets lost is luck and timing. So I wrote a little script to get the first 30 papers that appear when you search Google Scholar for the terms:

  * empirical processes
  * proportional hazards model
  * generalized linear model
  * semiparametric
  * generalized estimating equation
  * false discovery rate
  * microarray statistics
  * lasso shrinkage
  * rna-seq statistics

Google Scholar sorts by relevance, but that relevance is driven to a large degree by citations. For example, if you look at the first 10 papers you get for searching for false discovery rate you get.

  * Controlling the false discovery rate: a practical and powerful approach to multiple testing
  * Thresholding of statistical maps in functional neuroimaging using the false discovery rate
  * The control of the false discovery rate in multiple testing under dependency
  * Controlling the false discovery rate in behavior genetics research
  * Identifying differentially expressed genes using false discovery rate controlling procedures
  * The positive false discovery rate: A Bayesian interpretation and the q-value
  * On the adaptive control of the false discovery rate in multiple testing with independent statistics
  * Implementing false discovery rate control: increasing your power
  * Operating characteristics and extensions of the false discovery rate procedure
  * Adaptive linear step-up procedures that control the false discovery rate

People who work in this area will recognize that many of these papers are the most important/most cited in the field.

Now we can make a plot that shows for each term when these 30 highest ranked papers appear. There are some missing values, because of the way the data are scraped, but this plot gives you some idea of when the most cited papers on these topics were published:

&nbsp;

[<img class="aligncenter size-full wp-image-3798" src="http://simplystatistics.org/wp-content/uploads/2015/01/citations-boxplot.png" alt="citations-boxplot" width="600" height="400" srcset="http://simplystatistics.org/wp-content/uploads/2015/01/citations-boxplot-300x200.png 300w, http://simplystatistics.org/wp-content/uploads/2015/01/citations-boxplot-260x173.png 260w, http://simplystatistics.org/wp-content/uploads/2015/01/citations-boxplot.png 600w" sizes="(max-width: 600px) 100vw, 600px" />](http://simplystatistics.org/wp-content/uploads/2015/01/citations-boxplot.png)

You can see from the plot that the median publication year of the top 30 hits for "empirical processes" was 1990 and for "RNA-seq statistics" was 2010. The medians for the other topics were:

  * Emp. Proc. 1990.241
  * Prop. Haz. 1990.929
  * GLM 1994.433
  * Semi-param. 1994.433
  * GEE 2000.379
  * FDR 2002.760
  * microarray 2003.600
  * lasso 2004.900
  * rna-seq 2010.765

I think this pretty much matches up with the intuition most people have about the relative timing of fields, with a few exceptions (GEE in particular seems a bit late). There are a bunch of reasons this analysis isn't perfect, but it does suggest that luck and timing in choosing a problem can play a major role in the "success" of academic work as measured by citations.  It also suggests another reason for success in science than individual brilliance. Given the potentially negative consequences the [expectation of brilliance has on certain subgroups](http://www.sciencemag.org/content/347/6219/262.abstract), it is important to recognize the importance of timing and luck. The median most cited "false discovery rate" paper was 2002, but almost none of the 30 top hits were published after about 2008.

[The code for my analysis is here](https://gist.github.com/jtleek/c5158965d77c21ade424). It is super hacky so have mercy.
