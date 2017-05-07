---
id: 2647
title: The 80/20 rule of statistical methods development
date: 2014-03-20T11:10:33+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_10201814344259900
al2fb_facebook_link_time:
  - 2014-03-20T15:10:40+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/03/relpower2.png
dsq_thread_id:
  - 2469595685
categories:
  - Uncategorized
slug: "the-8020-rule-of-statistical-methods-development"
---
Developing statistical methods is hard and often frustrating work. One of the under appreciated rules in statistical methods development is what I call the 80/20 rule (maybe could even by the 90/10 rule). The basic idea is that the first _reasonable_ thing you can do to a set of data often is 80% of the way to the optimal solution. Everything after that is working on getting the last 20%. (_Edit: Rafa points out that once again I've [reverse-scooped](http://simplystatistics.org/2011/12/03/reverse-scooping/) a bunch of people and this is already a thing that has been pointed out many times. See for example the [Pareto principle](http://en.wikipedia.org/wiki/Pareto_principle) and [this post](http://c2.com/cgi/wiki?EightyTwentyRule) also called the 80:20 rule_)

Sometimes that extra 20% is really important and sometimes it isn't. In a clinical trial, where each additional patient may cost a large amount of money to recruit and enroll, it is definitely worth the effort. For more exploratory techniques like those often used when analyzing high-dimensional data it may not. This is particularly true because the extra 20% usually comes at a cost of additional assumptions about the way the world works. If your assumptions are right, you get the 20%, if they are wrong, you may lose and it isn't always clear how much.

Here is a very simple example of the 80/20 rule from frequentist statistics - in my experience similar ideas hold in machine learning and Bayesian inference as well. Suppose that I collect some observations <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_062d0284d7f45f7d93ff7d4b0fb8886f.gif' style='vertical-align: middle; border: none; ' class='tex' alt=" X_1,\ldots, X_n" /></span> and want to test whether the mean of the observations is greater than 0. Suppose I know that the data are normal and that the variance is equal to 1. Then the absolute best statistical test (called the u[niformly most powerful test](http://en.wikipedia.org/wiki/Uniformly_most_powerful_test)) you could do rejects the hypothesis the mean is zero if <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_8bc8d8fb0a6ff9570c357dab881a2891.gif' style='vertical-align: middle; border: none; ' class='tex' alt=" \bar{X} > z_{\alpha}\left(\frac{1}{\sqrt{n}}\right) " /></span>.

There are a bunch of other tests you could do though. If you assume the distribution is symmetric you could also use the sign test to test the same hypothesis by creating the random variables <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_ef677414efbbce1f018925a0af81fed4.gif' style='vertical-align: middle; border: none; ' class='tex' alt=" Y_i = 1(X_i > 0) " /></span> and testing the hypothesis <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_7ee857b7d44d932477dffae81af3056f.gif' style='vertical-align: middle; border: none; ' class='tex' alt=" H_0: Pr(Y_i = 1) = 0.5 " /></span> versus the alternative that the probability is greater than 0.5 . Or you could use the one sided t-test. Or you could use the Wilcoxon test. These are suboptimal if you _know_ the data are Normal with variance one.

I tried each of these tests with a sample of size <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_1e6b5b7ea03ea0c5cf784222e040a049.gif' style='vertical-align: middle; border: none; padding-bottom:1px;' class='tex' alt=" n=20 " /></span> at the <span class='MathJax_Preview'><img src='http://simplystatistics.org/wp-content/plugins/latex/cache/tex_062331e0001151470fd8ce434608411c.gif' style='vertical-align: middle; border: none; padding-bottom:1px;' class='tex' alt=" \alpha=0.05 " /></span> level. In the plot below I show the ratio of power between each non-optimal test and the optimal z-test (you could do this theoretically but I'm lazy so did it with simulation, [code here](https://gist.github.com/jtleek/9665572), colors by [RSkittleBrewer](http://alyssafrazee.com/RSkittleBrewer.html)).

<p style="text-align: center;">
  <a href="http://simplystatistics.org/2014/03/20/the-8020-rule-of-statistical-methods-development/relpower-3/" rel="attachment wp-att-2830"><img class=" wp-image-2830 aligncenter" alt="relpower" src="http://simplystatistics.org/wp-content/uploads/2014/03/relpower2.png" width="504" height="469" srcset="http://simplystatistics.org/wp-content/uploads/2014/03/relpower2-300x279.png 300w, http://simplystatistics.org/wp-content/uploads/2014/03/relpower2.png 720w" sizes="(max-width: 504px) 100vw, 504px" /></a>
</p>

The tests get to 80% of the power of the z-test for different sizes of the true mean (0.6 for Wilcoxon, 0.5 for the t-test, and 0.85 for the sign test). Overall, these methods very quickly catch up to the optimal method.

In this case, the non-optimal methods aren't much easier to implement than the optimal solution. But in many cases, the optimal method requires significantly more computation, memory, assumptions, theory, or some combination of the four. The hard decision is whether to create a new method is whether the 20% is worth it. This is obviously application specific.

An important corollary of the 80/20 rule is that you can have a huge impact on new technologies if you are the first to suggest an already known 80% solution. For example, the first person to suggest [hierarchical clustering](http://www.pnas.org/content/95/25/14863.long) or the [singular value decomposition](http://www.pnas.org/content/97/18/10101.abstract) for a new high-dimensional data type will often get a large number of citations. But that is a hard way to make a living - you aren't the only person who knows about these methods and the person who says it first soaks up a huge fraction of the credit. So the only way to take advantage of this corollary is to spend your time constantly trying to figure out what the next big technology will be. And you know what they say about prediction being hard, especially about the future.
