---
id: 1277
title: "False discovery rate regression (cc NSA's PRISM)"
date: 2013-06-13T10:36:43+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_505385366183991
al2fb_facebook_link_time:
  - 2013-06-13T14:36:51+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/05/pi0.png
dsq_thread_id:
  - 1398731781
categories:
  - Uncategorized
slug: "false-discovery-rate-regression-cc-nsas-prism"
---
_There is an idea I have been thinking about for a while now. It re-emerged at the top of my list after seeing this [really awesome post](http://kieranhealy.org/blog/archives/2013/06/09/using-metadata-to-find-paul-revere/) on using metadata to identify "conspirators" in the American revolution. My first thought was: but how do you know that you aren't just [making lots of false discoveries](http://www.statsblogs.com/2013/06/07/how-likely-is-the-nsa-prism-program-to-catch-a-terrorist/)?_

Hypothesis testing and significance analysis were originally developed to make decisions for single hypotheses. In many modern applications, it is more common to test hundreds or thousands of hypotheses. In the standard multiple testing framework, you perform a hypothesis test for each of the "features" you are studying (these are typically genes or voxels in high-dimensional problems in biology, but can be other things as well). Then the following outcomes are possible:

<div class="table-responsive">
  <table  style="width:100%; "  class="easy-table easy-table-default " border="0">
    <tr>
      <th >
      </th>
      
      <th >
        Call Null True
      </th>
      
      <th >
        Call Null False
      </th>
      
      <th >
        Total
      </th>
    </tr>
    
    <tr>
      <td >
        Null True
      </td>
      
      <td >
        True Negatives
      </td>
      
      <td >
        False Positives
      </td>
      
      <td >
        True Nulls
      </td>
    </tr>
    
    <tr>
      <td >
        Null False
      </td>
      
      <td >
        False Negatives
      </td>
      
      <td >
        True Positives
      </td>
      
      <td >
        False Nulls
      </td>
    </tr>
    
    <tr>
      <td >
      </td>
      
      <td >
        No Decisions
      </td>
      
      <td >
        Rejections
      </td>
    </tr>
  </table>
</div>

The reason for "No Decisions" is that the way hypothesis testing is set up, one should technically never accept the null hypothesis. The number of rejections is the total number of times you claim that a particular feature shows a signal of interest.

A very common measure of embarrassment in multiple hypothesis testing scenarios is the [false discovery rate](http://www.pnas.org/content/100/16/9440.long) defined as:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_8872a758f47a82b2e07e611dd230ce08.gif' style='vertical-align: middle; border: none;' class='tex' alt=" FDR = E\left[\frac{\# of False Positives}{\# of Rejections}\right] " /></span>
</p>.

There are some niceties that have to be dealt with here, like the fact that the <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_ffd8d02b433631d1f60bb73a1d273664.gif' style='vertical-align: middle; border: none; ' class='tex' alt="\# of Rejections" /></span> may be equal to zero, inspiring things like the [positive false discovery rate](http://www.genomine.org/papers/directfdr.pdf), which has [some nice Bayesian interpretations](http://genomics.princeton.edu/storeylab/papers/Storey_Annals_2003.pdf).

The way that the process usually works is that a test statistic is calculated for each hypothesis test where a larger statistic means more significant and then operations are performed on these ordered statistics. The two most common operations are: (1) pick a cutoff along the ordered list of p-values - call everything less than this threshold significant and _estimate_ the FDR for that cutoff and (2) pick an acceptable FDR level and find an algorithm to pick the threshold that _controls_ the FDR where control is defined usually by saying something like the algorithm produces <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_05efdcd0b987f4b9c9667b1b0ffe3e9c.gif' style='vertical-align: middle; border: none; ' class='tex' alt="E[FDP] \leq FDR" /></span>.

Regardless of the approach these methods usually make an assumption that the rejection regions should be nested. In other words, if you call statistic $T\_k$ significant and $T\_j > T\_k$ then your method should also call statistic $T\_j$ significant. In the absence of extra information, this is a very reasonable assumption.

But in many situations you might have additional information you would like to use in the decision about whether to reject the null hypothesis for test $j$.

**Example 1 **A common example is gene-set analysis. Here you have a group of hypotheses that you have tested individually and you want to say something about the level of noise _in the group_. In this case, you might want to know something about the level of noise if you call the whole set interesting.

**Example 2** Suppose you are a [mysterious government agency](http://www.nsa.gov/) and you want to identify potential terrorists. You observe some metadata on people and you want to predict who is a terrorist - [say using betweenness centrality](http://kieranhealy.org/blog/archives/2013/06/09/using-metadata-to-find-paul-revere/). You could calculate a P-value for each individual, [say using a randomization test](http://kieranhealy.org/blog/archives/2013/06/09/using-metadata-to-find-paul-revere/). Then estimate your FDR based on predictions using the metadata.

**Example 3 **You are monitoring a system over time where observations are random. Say for example whether there is an outbreak of a particular disease in a particular region at a given time. So, is the rate of disease higher than background. How can you estimate the rate at which you make false claims?

For now I'm going to focus on the estimation scenario but you could imagine using these estimates to try to develop controlling procedures as well.

In each of these cases you have a scenario where you are interested in something like:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_6b9dec89fd15463535787dae9770a119.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E\left[\frac{V}{R} | X=x\right] = fdr(x) " /></span>
</p>

where <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_d050cb5977ffc8b20156a55d09523b37.gif' style='vertical-align: middle; border: none; ' class='tex' alt="fdr(x)" /></span> is a covariate-specific estimator of the false discovery rate. Returning to our examples you could imagine:

**Example 1**

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_1d320f0acb560fdcbb3a754382fdfff6.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E\left[\frac{V}{R} | GS = k\right] =\beta_0 + \sum_{\ell=1}^K\beta_{\ell} 1(GS=\ell) " /></span>
</p>

**Example 2**

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_9098601d0984950edac65551f02c21d5.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E\left[\frac{V}{R} | Person , Age\right] =\beta_0 + \gamma Age + \sum_{\ell=1}^K\beta_{\ell}1(Person = \ell)" /></span>
</p>

**Example 3**

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_f91ccbb594db69ad1f8c4a6ce55aafe7.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E\left[\frac{V}{R} | Time \right] =\beta_0 + \sum_{\ell =1}^{K} s_{\ell}(time)" /></span>
</p>

Where in the last case, we have parameterized the relationship between FDR and time with a flexible model like [cubic splines](http://en.wikipedia.org/wiki/Spline_(mathematics)).

The hard problem is fitting the regression models in Examples 1-3. Here I propose a basic estimator of the FDR regression model and leave it to others to be smart about it. Let's focus on P-values because they are the easiest to deal with. Suppose that we calculate the random variables <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_950d9b6e1b9ec640c200f498edce462e.gif' style='vertical-align: middle; border: none; ' class='tex' alt="Y_i = 1(P_i > \lambda)" /></span>. Then:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_3fab11118e2a7046c2f292c6b8c4b02c.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E[Y_i] = Prob(P_i > \lambda) = (1-\lambda)*\pi_0 + (1-G(\lambda))*(1-\pi_0)" /></span>
</p>

Where $G(\lambda)$ is the empirical distribution function for the P-values under the alternative hypothesis. This may be a mixture distribution. If we assume reasonably powered tests and that $\lambda$ is large enough, then <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_bb81b1246a04daed40b29fbcb43af011.gif' style='vertical-align: middle; border: none; ' class='tex' alt="G(\lambda) \approx 1" /></span>. So

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_23e567c80909c623fb219119e166648f.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E[Y_i] \approx (1-\lambda) \pi_0" /></span>
</p>

One obvious choice is then to try to model

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_3bbbbca2879079148f4c2e876c22c16e.gif' style='vertical-align: middle; border: none;' class='tex' alt=" E[Y_i | X = x] \approx (1-\lambda) \pi_0(x) " /></span>
</p>

We could, for example use the model:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_f5a2a8626283bb4ffee57f4a841bf587.gif' style='vertical-align: middle; border: none;' class='tex' alt=" logit(E[Y_i | X = x]) = f(x)" /></span>
</p>

where <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_50bbd36e1fd2333108437a2ca378be62.gif' style='vertical-align: middle; border: none; ' class='tex' alt="f(x)" /></span> is a linear model or spline, etc. Then we get the fitted values and calculate:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_73bdc9e0e61a7d559c44b24d2ecd74cf.gif' style='vertical-align: middle; border: none;' class='tex' alt="\hat{\pi}_0(x) = \hat{E}[Y_i | X=x] /(1-\lambda)" /></span>
</p>

Here is a little simulated example where the goal is to estimate the probability of being a false positive as a smooth function of time.

<pre class="brush: r; title: ; notranslate" title="">## Load libraries

library(splines)
## Define the number of tests
set.seed(1345)
ntest &lt;- 1000

## Set up the time vector and the probability of being null
tme &lt;- seq(-2,2,length=ntest)
pi0 &lt;- pnorm(tme)

## Calculate a random variable indicating whether to draw
## the p-values from the null or alternative
nullI &lt;- rbinom(ntest,prob=pi0,size=1)&gt; 0

## Sample the null P-values from U(0,1) and the alternatives
## from a beta distribution

pValues &lt;- rep(NA,ntest)
pValues[nullI] &lt;- runif(sum(nullI))
pValues[!nullI] &lt;- rbeta(sum(!nullI),1,50)

## Set lambda and calculate the estimate

lambda &lt;- 0.8
y &lt;- pValues &gt; lambda
glm1 &lt;- glm(y ~ ns(tme,df=3))

## Get the estimate pi0 values
pi0hat &lt;- glm1$fitted/(1-lambda)

## Plot the real versus fitted probabilities

plot(pi0,pi0hat,col="blue",type="l",lwd=3,xlab="Real pi0",ylab="Fitted pi0")
abline(c(0,1),col="grey",lwd=3)
</pre>

The result is this plot:
  
<a href="http://simplystatistics.org/2013/06/13/false-discovery-rate-regression-cc-nsas-prism/pi0/" rel="attachment wp-att-1312"><img class="alignnone size-full wp-image-1312" alt="pi0" src="http://simplystatistics.org/wp-content/uploads/2013/05/pi0.png" width="480" height="480" srcset="http://simplystatistics.org/wp-content/uploads/2013/05/pi0-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2013/05/pi0-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2013/05/pi0.png 480w" sizes="(max-width: 480px) 100vw, 480px" /></a>

<span style="color: #000000;"><b>Real versus estimated false discovery rate when calling all tests significant.</b></span>

This estimate is obviously not guaranteed to estimate the FDR well, the operating characteristics both theoretically and empirically need to be evaluated and the other examples need to be fleshed out. But isn't the idea of FDR regression cool?
