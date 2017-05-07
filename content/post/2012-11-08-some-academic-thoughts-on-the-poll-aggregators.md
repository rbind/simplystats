---
id: 13
title: Some academic thoughts on the poll aggregators
date: 2012-11-08T20:11:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/35285752046/some-academic-thoughts-on-the-poll-aggregators
  - http://simplystatistics.tumblr.com/post/35285752046/some-academic-thoughts-on-the-poll-aggregators
  - http://simplystatistics.tumblr.com/post/35285752046/some-academic-thoughts-on-the-poll-aggregators
tumblr_simplystatistics_id:
  - 35285752046
  - 35285752046
  - 35285752046
dsq_thread_id:
  - 934633741
categories:
  - Uncategorized
slug: "some-academic-thoughts-on-the-poll-aggregators"
---
The night of the presidential elections I wrote a <a href="http://simplystatistics.org/post/35187901781/nate-silver-does-it-again-will-pundits-finally-accept" target="_blank">post</a> celebrating the victory of data over punditry. I was motivated by the personal attacks made against Nate Silver by pundits that do not understand Statistics. The post generated a little bit of (justified) _<a href="http://www.urbandictionary.com/define.php?term=nerdrage" target="_blank">nerdrage</a> _(see comment section). So here I clarify a couple of things not as a member of Nate Silver&#8217;s fan club (my <a href="http://www.urbandictionary.com/define.php?term=mancrush" target="_blank"><em>mancrush</em> </a>started with <a href="http://www.baseballprospectus.com/" target="_blank">PECOTA</a> not fivethirtyeight) but as an applied statistician.

The main reason <a href="http://fivethirtyeight.blogs.nytimes.com/" target="_blank">fivethrityeight</a> predicts election results so well is mainly due to the idea of averaging polls. This idea was around way before fivethirtyeight started. In fact, it&#8217;s a version of <a href="http://en.wikipedia.org/wiki/Meta-analysis" target="_blank">meta-analysis</a> which has been around for hundreds of years and is commonly used to <a href="http://www.ncbi.nlm.nih.gov/pubmed/3802833" target="_blank">improve results of clinical trials</a>. This election cycle several groups,  including Sam Wang (<a href="http://election.princeton.edu/" target="_blank">Princeton Election Consortium</a>), Simon Jackman (<a href="http://www.huffingtonpost.com/simon-jackman/pollster-predictions_b_2081013.html" target="_blank">pollster</a>), and Drew Linzer (<a href="http://votamatic.org/" target="_blank">VOTAMATIC</a>), predicted the election perfectly using this trick. 

<span></span>While each group adds their own set of bells and whistles, most of the gains come from the aggregation of polls and understanding the concept of a standard error. Note that <span>while each individual poll may be a bit biased, historical data shows that these biases average out to 0. So by taking the average you obtain a close to unbiased estimate. Because there are so many pollsters, each one conducting several polls, you can also estimate the standard error of your estimate pretty well (empirically rather than theoretically). </span><span> </span><span>I include a plot below that provides evidence that bias is not an issue and that standard errors are well estimated. The dash line is at +/- 2 standard erros based on the average (across all states) standard error reported by fivethirtyeight. Note that the variability is smaller for the battleground states where more polls were conducted (this is consistent with state-specific standard error reported by fivethirtyeight).</span>

<span>Finally, there is the issue of the use of the word &#8220;probability&#8221;. Obviously one can correctly state that there is a 90% chance of observing event A and then have it not happen: Romney could have won and the aggregators still been &#8220;right&#8221;. Also </span>frequentists complain when we talk about the probability of something that only will happen once? I actually don&#8217;t like getting into this philosophical discussion (<a href="http://andrewgelman.com/2012/10/is-it-meaningful-to-talk-about-a-probability-of-65-7-that-obama-will-win-the-election/" target="_blank">Gelman</a> has some thoughts worth reading) and I cut people who write for the masses some slack. If the aggregators consistently outperform the pundits in their predictions I have no problem with them using the word &#8220;probability&#8221; in their reports. I look forward to some of the post-election analysis of all this.

<a href="http://rafalab.jhsph.edu/simplystats/silver3.png" target="_blank"><img height="500" src="http://rafalab.jhsph.edu/simplystats/silver3.png" width="500" /></a>
