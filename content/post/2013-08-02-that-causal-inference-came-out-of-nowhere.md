---
id: 1619
title: That causal inference came out of nowhere
date: 2013-08-02T09:43:52+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_524464877609373
al2fb_facebook_link_time:
  - 2013-08-02T13:44:02+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1560424594
categories:
  - Uncategorized
slug: "that-causal-inference-came-out-of-nowhere"
---
[This](http://archpedi.jamanetwork.com/article.aspx?articleid=1720224) is a study of breastfeeding and its impact on IQ that has been making the rounds on a number of different media outlets. I first saw it on the [Wall Street Journal](http://online.wsj.com/article/SB10001424127887324809004578635783141433600.html) where I was immediately drawn to this quote:

> They then subtracted those factors using a statistical model. Dr. Belfort said she hopes that "what we have left is the true connection" with nursing and IQ.

As the father of a young child this was of course pretty interesting to me so I thought I'd go and [check out the paper](http://archpedi.jamanetwork.com/article.aspx?articleid=1720224) itself. I was pretty stunned to see this line right there in the conclusions:

> Our results support a causal relationship of breastfeeding duration with receptive language and verbal and nonverbal intelligence later in life.

I immediately thought: "man how did they run a clinical trial of breastfeeding". It seems like it would be a huge challenge to get past the IRB. So then I read a little bit more carefully how they performed the analysis. It was a prospective study, where they followed the children over time, then performed a linear regression analysis to adjust for a number of other factors that might influence childhood intelligence. Some examples include mother's IQ, soci0-demographic information, and questionaires about delivery.

They then fit a number of regression models with different combinations of covariates and outcomes. They did not attempt to perform any sort of causal inference to make up for the fact that the study was not randomized. Moreover, they did not perform multiple hypothesis testing correction for all of the combinations of effects they observed. The actual reported connections represent just a small fraction of all the possible connections they tested.

So I was pretty surprised when they said:

> In summary, our results support a causal relationship of breastfeeding in infancy with receptive language at age 3 and with verbal and nonverbal IQ at school age.

<p style="text-align: left;">
  <a href="http://simplystatistics.org/2013/07/15/yes-clinical-trials-work/">I'm</a> as <a href="http://simplystatistics.org/2013/05/06/why-the-current-over-pessimism-about-science-is-the-perfect-confirmation-bias-vehicle-and-we-should-proceed-rationally/">optimistic</a> as <a href="http://arxiv.org/abs/1301.3718">science</a> as they come. But where did that causal inference come from?
</p>
