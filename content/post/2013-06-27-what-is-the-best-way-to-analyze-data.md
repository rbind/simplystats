---
id: 1452
title: What is the Best Way to Analyze Data?
date: 2013-06-27T16:41:20+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_510682482320946
al2fb_facebook_link_time:
  - 2013-06-27T20:41:37+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1442824653
categories:
  - Uncategorized
slug: "what-is-the-best-way-to-analyze-data"
---
One topic I've been thinking about recently is extent to which data analysis is an art versus a science. In my thinking about art and science, I rely on Don Knuth's distinction, from his 1974 lecture "Computer Programming as an Art":

> Science is knowledge that we understand so well that we can teach it to a computer; and if we don't fully understand something, it is an art to deal with it. Since the notion of an algorithm or a computer program provides us with an extremely useful test for the depth of our knowledge about any given subject, the process of going from an art to a science means that we learn how to automate something.

Of course, the phrase "analyze data" is far too general; it needs to be placed in a much more specific context. So choose your favorite specific context and consider this question: Is there a way to teach a computer how to analyze the data generated in that context? Jeff wrote about this a while back and he called this magical program the [deterministic statistical machine](http://simplystatistics.org/2012/08/27/a-deterministic-statistical-machine/).

For example, one area where I've done some work is in estimating short-term/acute population-level effects of ambient air pollution. These are typically done using time series data of ambient pollution from central monitors and community-level counts of some health outcome (e.g. deaths, hospitalizations). The basic question is if pollution goes up on a given day, do we also see health outcomes go up on the same day, or perhaps in the few days afterwards. This is a fairly well-worn question in the air pollution literature and there have been hundreds of time series studies published. Similarly, there has been a lot of research into the statistical methodology for conducting time series studies and I would wager that as a result of that research we actually know something about what _to_ do and what _not_ to do.

But is our level of knowledge about the methodology for analyzing air pollution time series data to the point where we could program a computer to do the whole thing? Probably not, but I believe there are aspects of the analysis that we could program.

Here's how I might break it down. Assume we basically start with a rectangular dataset with time series data on a health outcome (say, daily mortality counts in a major city), daily air pollution data, and daily data on other relevant variables (e.g. weather). Typically, the target of analysis is the association between the air pollution variable and the outcome, adjusted for everything else.

  1. <span style="line-height: 16px;"><strong>Exploratory analysis</strong>. Not sure this can be fully automated. Need to check for missing data and maybe stop analysis if proportion of missing data is too high? Check for high leverage points as pollution data tends to be skewed. Maybe log-transform if that makes sense in this context. Check for other outliers and note them for later (we may want to do a sensitivity analysis without those observations). </span>
  2. **Model fitting**. This is already fully automated. If the outcome is a count, then typically a Poisson regression model is used. We already know that maximum likelihood is an excellent approach and better than most others under reasonable circumstances. There's plenty of GLM software out there so we don't even have to program the IRLS algorithm.
  3. **Model building**. Since this is not a prediction model, the main concern we have is that we properly adjusted for measured and unmeasured confounding. [Francesca Dominici](http://www.hsph.harvard.edu/francesca-dominici/) and some of her colleagues have done [some](http://www.ncbi.nlm.nih.gov/pubmed/18552590) [interesting](http://www.ncbi.nlm.nih.gov/pubmed/22364439) [work](http://www.tandfonline.com/doi/abs/10.1198/016214504000000656#.Ucye6BbHKZY) regarding how best to do this via Bayesian model averaging and other approaches. I would say that in principle this can be automated, but the lack of easy-to-use software at the moment makes it a bit complicated. That said, I think simpler versions of the "ideal approach" can be easily implemented.
  4. **Sensitivity analysis**. There are a number of key sensitivity analyses that need to be done in all time series analyses. If there were outliers during EDA, maybe re-run model fit and see if regression coefficient for pollution changes much. How much is too much? (Not sure.) For time series models, unmeasured temporal confounding is a big issue so this is usually checked using spline smoothers on the time variable with different degrees of freedom. This can be automated by fitting the model many different times with different degrees of freedom in the spline.
  5. **Reporting**. Typically, some summary statistics for the data are reported along with the estimate + confidence interval for the air pollution association. Estimates from the sensitivity analysis should be reported (probably in an appendix), and perhaps estimates from different lags of exposure, if that's a question of interest. It's slightly more complicated if you have a multi-city study.

So I'd say that of the five major steps listed above, the one that I find most difficult to automate is EDA. There a lot of choices have to be made that are not easy to program into a computer. But I think the rest of the analysis could be automated. I've left out the cleaning and preparation of the data here, which also involves making many choices. But in this case, much of that is often outside the control of the investigator. These analyses typically use publicly available data where the data are available "as-is". For example, the investigator would likely have no control over how the mortality counts were created.

What's the point of all this? Well, I would argue that if we cannot completely automate a data analysis for a given context, then either we need to narrow the context, or we have some more statistical research to do. Thinking about how one might automate a data analysis process is a useful way to identify where are the major statistical gaps in a given area. Here, there may be some gaps in how best to automate the exploratory analyses. Whether those gaps can be filled (or more importantly, whether _you_ are interested in filling them) is not clear. But most likely it's not a good idea to think about better ways to fit Poisson regression models.

So what do you do when all of the steps of the analysis have been fully automated? Well, I guess time to move on then....
