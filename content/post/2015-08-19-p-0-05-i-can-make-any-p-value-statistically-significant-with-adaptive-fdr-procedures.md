---
id: 4236
title: 'P > 0.05? I can make any p-value statistically significant with adaptive FDR procedures'
date: 2015-08-19T10:38:31+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_846665948722596
al2fb_facebook_link_time:
  - 2015-08-19T14:38:38+00:00
al2fb_facebook_link_picture:
  - post= http://imgs.xkcd.com/comics/significant.png
dsq_thread_id:
  - 4047423523
categories:
  - Uncategorized
slug: "p-0-05-i-can-make-any-p-value-statistically-significant-with-adaptive-fdr-procedures"
---
Everyone knows now that you have to correct for multiple testing when you calculate many p-values otherwise this can happen:

<div style="width: 550px" class="wp-caption aligncenter">
  <a href="http://xkcd.com/882/"><img class="" src=" http://imgs.xkcd.com/comics/significant.png" alt="" width="540" height="1498" /></a>
  
  <p class="wp-caption-text">
    http://xkcd.com/882/
  </p>
</div>

&nbsp;

One of the most popular ways to correct for multiple testing is to estimate or control the [false discovery rate](https://en.wikipedia.org/wiki/False_discovery_rate). The false discovery rate attempts to quantify the fraction of made discoveries that are false. If we call all p-values less than some threshold _t_ significant, then borrowing notation from this [great introduction to false discovery rates ](http://www.ncbi.nlm.nih.gov/pubmed/12883005)

[<img class="aligncenter size-full wp-image-4246" src="http://simplystatistics.org/wp-content/uploads/2015/08/fdr3.gif" alt="fdr3" width="285" height="40" />](http://simplystatistics.org/wp-content/uploads/2015/08/fdr3.gif)

&nbsp;

So _F(t)_ is the (unknown) total number of null hypotheses called significant and _S(t)_ is the total number of hypotheses called significant. The FDR is the expected ratio of these two quantities, which, under certain assumptions can be approximated by the ratio of the expectations.

&nbsp;

[<img class="aligncenter size-full wp-image-4247" src="http://simplystatistics.org/wp-content/uploads/2015/08/fdr4.gif" alt="fdr4" width="246" height="44" />](http://simplystatistics.org/wp-content/uploads/2015/08/fdr4.gif)

&nbsp;

To get an estimate of the FDR we just need an estimate for  _E[_F(t)]_ _ and _E[S(t)]. _The latter is pretty easy to estimate as just the total number of rejections (the number of _p < t_). If you assume that the p-values follow the expected distribution then _E[_F(t)]_  _can be approximated by multiplying the fraction of null hypotheses, multiplied by the total number of hypotheses and multiplied by _t_ since the p-values are uniform. To do this, we need an estimate for <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_d4c98d75e25f5d28461f1da221eb7a95.gif' style='vertical-align: middle; border: none; padding-bottom:1px;' class='tex' alt="\pi_0" /></span>, the proportion of null hypotheses. There are a large number of ways to estimate this quantity but it is almost always estimated using the full distribution of computed p-values in an experiment. The most popular estimator compares the fraction of p-values greater than some cutoff to the number you would expect if every single hypothesis were null. This fraction is about the fraction of null hypotheses.

Combining the above equation with our estimates for _E[_F(t)]_ _ and _E[S(t)] _we get:

&nbsp;

[<img class="aligncenter size-full wp-image-4250" src="http://simplystatistics.org/wp-content/uploads/2015/08/fdr5.gif" alt="fdr5" width="238" height="42" />](http://simplystatistics.org/wp-content/uploads/2015/08/fdr5.gif)

&nbsp;

The q-value is a multiple testing analog of the p-value and is defined as:

[<img class="aligncenter size-full wp-image-4258" src="http://simplystatistics.org/wp-content/uploads/2015/08/fdr61.gif" alt="fdr6" width="163" height="26" />](http://simplystatistics.org/wp-content/uploads/2015/08/fdr61.gif)

&nbsp;

This is of course a very loose version of this and you can get a more technical description [here](http://www.genomine.org/papers/directfdr.pdf). But the main thing to notice is that the q-value depends on the estimated proportion of null hypotheses, which depends on the distribution of the observed p-values. The smaller the estimated fraction of null hypotheses, the smaller the FDR estimate and the smaller the q-value. This suggests a way to make any p-value significant by altering its "testing partners". Here is a quick example. Suppose that we have done a test and have a p-value of 0.8. Not super significant. Suppose we perform this test in conjunction with a number of hypotheses that are null generating a p-value distribution like this.

[<img class="aligncenter size-medium wp-image-4260" src="http://simplystatistics.org/wp-content/uploads/2015/08/uniform-pvals-300x300.png" alt="uniform-pvals" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2015/08/uniform-pvals-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/08/uniform-pvals-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/08/uniform-pvals.png 480w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/08/uniform-pvals.png)

Then you get a q-value greater than 0.99 as you would expect. But if you test that exact same p-value with a ton of other non-null hypotheses that generate tiny p-values in a distribution that looks like this:

[<img class="aligncenter size-medium wp-image-4261" src="http://simplystatistics.org/wp-content/uploads/2015/08/significant-pvals-300x300.png" alt="significant-pvals" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2015/08/significant-pvals-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/08/significant-pvals-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/08/significant-pvals.png 480w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/08/significant-pvals.png)

&nbsp;

Then you get a q-value of 0.0001 for that same p-value of 0.8. The reason is that the estimate of the fraction of null hypotheses goes essentially to zero, which drives down the q-value. You can do this with any p-value, if you make its testing partners have sufficiently low p-values then the q-value will also be as small as you like.

A couple of things to note:

  * Obviously doing this on purpose to change the significance of a calculated p-value is cheating and shouldn't be done.
  * For correctly calculated p-values on a related set of hypotheses this is actually a sensible property to have - if you have almost all very small p-values and one very large p-value, you are doing a set of tests where almost everything appears to be alternative and you should weight that in some sensible way.
  * This is the reason that sometimes a "multiple testing adjusted" p-value (or q-value) is smaller than the p-value itself.
  * This doesn't affect non-adaptive FDR procedures - but those procedures still depend on the "testing partners" of any p-value through the total number of tests performed. This is why people talk about the so-called "multiple testing burden". But that is a subject for a future post. It is also the reason non-adaptive procedures can be severely underpowered compared to adaptive procedures when the p-values are correct.
  * I've appended the code to generate the histograms and calculate the q-values in this post in the following gist.

&nbsp;
