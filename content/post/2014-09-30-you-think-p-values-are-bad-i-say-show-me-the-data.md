---
id: 3314
title: You think P-values are bad? I say show me the data.
date: 2014-09-30T12:00:44+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_705053372883855
al2fb_facebook_link_time:
  - 2014-09-30T16:00:51+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3069286421
categories:
  - Uncategorized
slug: "you-think-p-values-are-bad-i-say-show-me-the-data"
---
<div class="page" title="Page 1">
  <div class="layoutArea">
    <div class="column">
      <p>
        Both the scientific community and the popular press are freaking out about reproducibility right now. I think they have good reason to, because even the US Congress is now <a href="http://web.stanford.edu/~vcs/talks/Testimony-STODDEN.pdf">investigating the transparency of science</a>. It has been driven by the very public reproducibility disasters in <a href="http://simplystatistics.org/2012/02/27/the-duke-saga-starter-set/">genomics</a> and <a href="http://simplystatistics.org/2013/04/19/podcast-7-reinhart-rogoff-reproducibility/">economics</a>.
      </p>
      
      <p>
        There are three major components to a reproducible and replicable study from a computational perspective: (1) the raw data from the experiment must be available, (2) the statistical code and documentation to reproduce the analysis must be available and (3) a correct data analysis must be performed.
      </p>
      
      <p>
        There have been successes and failures in releasing all the data, but <a href="http://blogs.plos.org/everyone/2014/02/24/plos-new-data-policy-public-access-data-2/">PLoS' policy on data availability</a> and the <a href="http://www.alltrials.net/">alltrials</a> initiative hold some hope. The most progress has been made on making code and documentation available. Galaxy, knitr, and iPython make it easier to distribute literate programs than it has ever been previously and people are actually using them!
      </p>
      
      <p>
        The trickiest part of reproducibility and replicability is ensuring that people perform a good data analysis. The first problem is that we actually don't know which statistical methods lead to higher reproducibility and replicability in users hands.  Articles like <a href="http://www.nytimes.com/2014/09/30/science/the-odds-continually-updated.html?_r=0">the one that just came out in the NYT</a> suggest that using one type of method (Bayesian approaches) over another (p-values) will address the problem. But the real story is that those are still 100% philosophical arguments. We actually have very little good data on whether analysts will perform better analyses using one method or another.  <a href="http://simplystatistics.org/2014/02/14/on-the-scalability-of-statistical-procedures-why-the-p-value-bashers-just-dont-get-it/">I agree with Roger</a> in his tweet storm (quick someone is wrong on the internet Roger, fix it!):
      </p>
      
      <blockquote class="twitter-tweet" width="550">
        <p>
          5/If using Bayesian methods made you a better scientist, that would be great. But I need to see the evidence on that first.
        </p>
        
        <p>
          &mdash; Roger D. Peng (@rdpeng) <a href="https://twitter.com/rdpeng/status/516958707859857409">September 30, 2014</a>
        </p>
      </blockquote>
      
      <p>
      </p>
      
      <p>
        This is even more of a problem because the data deluge demands that <a href="http://simplystatistics.org/2013/06/14/the-vast-majority-of-statistical-analysis-is-not-performed-by-statisticians/">almost all data analysis be performed by people with basic to intermediate statistics training</a> at best. There is no way around this in the short term. There just aren't enough trained statisticians/data scientists to go around.  So we need to study statistics just like any other human behavior to figure out which methods work best in the hands of the people most likely to be using them.
      </p>
    </div>
  </div>
</div>
