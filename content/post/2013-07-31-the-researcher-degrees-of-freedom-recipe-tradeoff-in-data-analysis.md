---
id: 1540
title: 'The researcher degrees of freedom - recipe tradeoff in data analysis'
date: 2013-07-31T10:25:34+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_523659947689866
al2fb_facebook_link_time:
  - 2013-07-31T14:25:40+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1551474123
categories:
  - Uncategorized
slug: "the-researcher-degrees-of-freedom-recipe-tradeoff-in-data-analysis"
---
An important concept that is only recently gaining the [attention](http://andrewgelman.com/2012/11/01/researcher-degrees-of-freedom/) [it](http://theness.com/neurologicablog/index.php/publishing-false-positives/) [deserves](http://duncanlaw.wordpress.com/2012/04/09/researcher-degrees-of-freedom/) is researcher degrees of freedom. From [Simmons et al](http://people.psych.cornell.edu/~jec7/pcd%20pubs/simmonsetal11.pdf).:

> The culprit is a construct we refer to as researcher degrees of freedom. In the course of collecting and analyzing data, researchers have many decisions to make: Should more data be collected? Should some observations be excluded? Which conditions should be combined and which ones compared? Which control variables should be considered? Should specific measures be combined or transformed or both?

So far, researcher degrees of freedom has primarily been used with [negative connotations](http://www.slate.com/articles/health_and_science/science/2013/07/statistics_and_psychology_multiple_comparisons_give_spurious_results.html). This probably stems from the original definition of the idea which focused on how analysts could "manufacture" statistical significance by changing the way the data was processed without disclosing those changes. Reproducible research and distributed code would of course address these issues to some extent. But it is still relatively easy to obfuscate dubious analysis by [dressing it up in technical language](http://petewarden.com/2013/07/18/why-you-should-never-trust-a-data-scientist/).

One interesting point that I think sometimes gets lost in all of this is the researcher degrees of freedom - recipe tradeoff. You could think of this as the[bias-variance tradeoff](http://scott.fortmann-roe.com/docs/BiasVariance.html) for big data.

At one end of the scale you can allow the data analyst full freedom, in which case researcher degrees of freedom may lead to overfitting and open yourself up to the manufacture of statistical results (optimistic significance or point estimates or confidence intervals). Or you can [require a recipe](http://simplystatistics.org/2012/08/27/a-deterministic-statistical-machine/) for every data analysis which means that it isn't possible to adapt to the unanticipated quirks (missing data mechanism, outliers, etc.) that may be present in an individual data set.

As with the bias-variance tradeoff, the optimal approach probably depends on your optimality criteria. You could imagine fitting a model that minimizes the mean squared error for fitting a linear model where you do not constrain the degrees of freedom in any way (that might represent an analysis where the researcher tries all possible models, including all types of data munging, choices of which observations to drop, how to handle outliers, etc.) to get the absolute best fit. Of course, this would likely be a strongly overfit/biased model. Alternatively you could penalize the flexibility allowed to the analyst. For example, you minimize a weighted criteria like:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_e18e41b63161ab4018790b295f7fb05d.gif' style='vertical-align: middle; border: none;' class='tex' alt=" \sum_{i=1}^n (y_i - b_0 x_{i1} + b_1 x_{i2})^2 + Researcher \; Penalty(\vec{y},\vec{x})" /></span>
</p>

Some examples of the penalties could be:

  * <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_7a7fd71819b3694b995fbd1fafc903fe.gif' style='vertical-align: middle; border: none; ' class='tex' alt=" \lambda \times \sum_{i=1}^n 1_{researcher\; dropped \; ?y_i , x_i?\ ; from \; analysis}" /></span>
  * <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_d77e8e36192d96f2d5f700d8b9b66be9.gif' style='vertical-align: middle; border: none; ' class='tex' alt="\lambda \times \#\{of\;transforms\;tried\}" /></span>
  * <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_08fc8b9e8ab22b50767a77c4d74b9739.gif' style='vertical-align: middle; border: none; ' class='tex' alt=" \lambda \times \#{Outliers \; removed \; ad-hoc}" /></span>

You could also combine all of the penalties together into the "elastic researcher net" type approach. Then as the collective pentalty <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_61b2f994e9f9cea7af386ccb914f2ed7.gif' style='vertical-align: middle; border: none; padding-bottom:1px;' class='tex' alt=" \lambda \rightarrow \infty" /></span> you get the [DSM](http://simplystatistics.org/2012/08/27/a-deterministic-statistical-machine/), like you have in a clinical trial for example.As <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_b6df1ca955358221c80c622cfdbe6912.gif' style='vertical-align: middle; border: none; ' class='tex' alt="\lambda \rightarrow 0" /></span> you get fully flexible data analysis, which you might want for discovery.

Of course if you allow researchers to choose the penalty you are right back to a scenario where you have degrees of freedom in the analysis (the problem you always get with any penalized approach). On the other hand it would make it easier to disclose how those degrees of freedom were applied.
