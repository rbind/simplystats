---
id: 332
title: 'P-values and hypothesis testing get a bad rap - but we sometimes find them useful.'
date: 2012-01-06T16:54:52+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/15402808730/p-values-and-hypothesis-testing-get-a-bad-rap-but-we
tumblr_simplystatistics_id:
  - 15402808730
dsq_thread_id:
  - 933963843
categories:
  - Uncategorized
tags:
  - education
  - p-value
  - Rant
slug: "p-values-and-hypothesis-testing-get-a-bad-rap-but-we"
---
_This post written by Jeff Leek and Rafa Irizarry._

The <a href="http://en.wikipedia.org/wiki/P-value" target="_blank">p-value</a> is the most widely-known statistic. P-values are reported in a large majority of scientific publications that measure and report data. <a href="http://en.wikipedia.org/wiki/Ronald_Fisher" target="_blank">R.A. Fisher</a> is widely credited with inventing the p-value. If he was cited every time a p-value was reported his paper would have, at the very least, 3&#160;**million** citations* - making it the <a href="http://www.jbc.org/content/280/28/e25.full#" target="_blank">most highly cited paper</a> of all time. 

<!-- more -->

However, the p-value has a large number of very vocal critics. The criticisms of p-values, and hypothesis testing more generally, range from philosophical to practical. There are even <a href="http://warnercnr.colostate.edu/~anderson/thompson1.html" target="_blank">entire websites</a> dedicated to &#8220;debunking&#8221; p-values! One issue many statisticians raise with p-values is that they are easily misinterpreted, another is that p-values are not calibrated by sample size, another is that it ignores existing information or knowledge about the parameter in question, and yet another is that very significant (small) p-values may result even when the value of the parameter of interest is scientifically uninteresting.

We agree with all these criticisms. Yet, in practice, we find p-values useful and, if used correctly, a powerful tool for the advancement of science. The fact that many misinterpret the p-value is not the p-value&#8217;s fault. If the statement &#8220;under the null the chance of observing something this convincing is 0.65&#8221; is correct, then why not use it? Why not explain to our collaborator that the observation they thought was so convincing can easily happen by chance in a setting that is uninteresting. In cases where p-values are _small enough_ then the substantive experts can help decide if the parameter of interest is scientifically interesting. In general, we find p-value to be superior to our collaborators intuition of what patterns are statistically interesting and which ones are not.

We also find p-values provide a simple way to construct decision algorithms. For example, a government agency can define general rules based on p-values that are applied equally to products needing a specific seal of approval. If the rule proves to be to lenient or restrictive, we change the p-value cut-off appropriately. In this situation we view the p-value as part of a practical protocol, not a tool for statistical inference.

Moreover the p-value has the following useful properties for applied statisticians:

  1. **p-values are easy to calculate, even for complicated statistics**. Many statistics do not lend themselves to easy analytic calculation; but using permutation and bootstrap procedures p-values can be calculated even for very complicated statistics. 
  2. **p-values are relatively easy to understand.**  The statistical interpretation of the p-value remains roughly the same no matter how complicated the underlying statistic and they also bounded between 0 and 1. This also means that p-values are easy to _mis_-interpret - they are not posterior probabilities. But this is a difficulty with education, not a difficulty with the statistic itself. 
  3. **p-values have simple, universal properties ** Correct p-values are uniformly distributed under the null, regardless of how complicated the underlying statistic. 
  4. **p-values are calibrated to error rates scientists care about **Regardless of the underlying statistic, calling all P-values less than 0.05 significant leads to on average about 5% false positives even if the null hypothesis is always true. If this property is ignored things like publication bias can result, but again this is a problem with education and the scientific process, not with p-values. 
  5. **p-values are useful for multiple testing correction.** The advent of new measurement technology has shifted much of science from hypothesis driven to discovery driven making the existing multiple testing machinery useful. Using the simple, universal properties of p-values it is possible to easily calculate estimates of quantities like the false discovery rate - the rate at which discovered associations are false.
  6. **p-values are reproducible.** All statistics are reproducible with enough information. Given the simplicity of calculating p-values, it is relatively easy to communicate sufficient information to reproduce them. 

We agree there are flaws with p-values, just like there are with any statistic one might choose to calculate. In particular, we do think that confidence intervals should be reported with p-values when possible. But we believe that any other decision-making statistic would lead to other problems. One thing we are sure about is that p-values beat scientists&#8217; intuition about chance any day. So before bashing p-values too much we should be careful because, like democracy to government, p-values may be the worst form of statistical significance calculation except all those other forms that have been tried from time to time. 

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;

_* Calculated using Google Scholar using the formula:_

_Number of P-value Citations = # of papers with exact phrase &#8220;P < 0.05&#8221; + (# of papers with exact phrase &#8220;P < 0.01&#8221; and not exact phrase &#8220;P < 0.05&#8221;) +   (# of papers with exact phrase &#8220;P < 0.001&#8221; and not exact phrase &#8220;P < 0.05&#8221; or &#8220;P < 0.001&#8221;) _

_= 1,320,000 + 1,030,000 + 662,500_

_This is obviously an extremely conservative estimate. _
