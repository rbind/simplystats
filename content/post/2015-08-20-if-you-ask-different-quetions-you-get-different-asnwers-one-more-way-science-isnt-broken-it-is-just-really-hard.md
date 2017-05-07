---
id: 4268
title: "If you ask different questions you get different answers - one more way science isn't broken it is just really hard"
date: 2015-08-20T14:52:34+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_847194008669790
al2fb_facebook_link_time:
  - 2015-08-20T18:52:43+00:00
al2fb_facebook_link_picture:
  - 'post=https://espnfivethirtyeight.files.wordpress.com/2015/08/truth-vigilantes-soccer-calls2.png?w=1024&amp;h=597'
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4051283401
categories:
  - Uncategorized
slug: "if-you-ask-different-quetions-you-get-different-asnwers-one-more-way-science-isnt-broken-it-is-just-really-hard"
---
If you haven't already read the amazing piece by Christie Aschwanden on why [Science isn't Broken](http://fivethirtyeight.com/features/science-isnt-broken/) you should do so immediately. It does an amazing job of capturing the nuance of statistics as applied to real data sets and how that can be misconstrued as science being "broken" without falling for the easy "everything is wrong" meme.

One thing that caught my eye was how the piece highlighted a crowd-sourced data analysis of soccer red cards. The key figure for that analysis is this one:

&nbsp;

[<img class="aligncenter" src="https://espnfivethirtyeight.files.wordpress.com/2015/08/truth-vigilantes-soccer-calls2.png?w=1024&h=597" alt="" width="1024" height="597" />](http://fivethirtyeight.com/features/science-isnt-broken/)

I think the figure and [underlying data](https://osf.io/qix4g/) for this figure are fascinating in that they really highlight the human behavioral variation in data analysis and you can even see some [data analysis subcultures ](http://simplystatistics.org/2015/04/29/data-analysis-subcultures/)emerging from the descriptions of how people did the analysis and justified or not the use of covariates.

One subtlety of the figure that I missed on the original reading is that not all of the estimates being reported are measuring the same thing. For example, if some groups adjusted for the country of origin of the referees and some did not, then the estimates for those two groups are measuring different things (the association conditional on country of origin or not, respectively). In this case the estimates may be different, but entirely consistent with each other, since they are just measuring different things.

If you ask two people to do the analysis and you only ask them the simple question: _Are referees more likely to give  red cards to dark skinned players?_ then you may get a different answer based on those two estimates. But the reality is the answers the analysts are reporting are actually to the questions:

  1. Are referees more likely to give  red cards to dark skinned players holding country of origin fixed?
  2. Are referees more likely to give  red cards to dark skinned players averaging over country of origin (and everything else)?

The subtlety lies in the fact that changes to covariates in the analysis are actually changing the hypothesis you are studying.

So in fact the conclusions in that figure may all be entirely consistent after you condition on asking the same question. I'd be interested to see the same plot, but only for the groups that conditioned on the same set of covariates, for example. This is just one more reason that science is really hard and why I'm so impressed at how well the FiveThirtyEight piece captured this nuance.

&nbsp;

&nbsp;
