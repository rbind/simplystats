---
id: 87
title: Increasing the cost of data analysis
date: 2012-08-29T14:00:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/30452945357/increasing-the-cost-of-data-analysis
tumblr_simplystatistics_id:
  - 30452945357
dsq_thread_id:
  - 934074613
categories:
  - Uncategorized
slug: "increasing-the-cost-of-data-analysis"
---
Jeff&#8217;s post about the <a href="http://simplystatistics.org/post/30315018436/a-deterministic-statistical-machine" target="_blank">deterministic statistical machine</a> got me thinking a bit about the cost of data analysis. The cost of data analysis these day is in many ways going up. The data being collected are getting bigger and more complex. Analyzing these data require more expertise, more storage hardware, and more computing power. In fact the analysis in some fields like genomics is now more expensive than the collection of the data [There&#8217;s a graph that shows this but I can&#8217;t seem to find it anywhere; I&#8217;ll keep looking and post later. For now <a href="http://www.nytimes.com/2011/12/01/business/dna-sequencing-caught-in-deluge-of-data.html" target="_blank">see here</a>.].

However, that&#8217;s really about the dollars and cents kind of cost. The cost of data analysis has gone very far down in a different sense. For the vast majority of applications that look at moderate to large datasets, many many statistical analyses can be conducted essentially at the push of a button. And so there&#8217;s not cost in continuing to analyze data until a desirable result is obtained. Correcting for multiple testing is one way to &#8220;fix&#8221; this problem. But I personally don&#8217;t find multiple testing corrections to be all that helpful because ultimately they still try to boil down a complex analysis into a simple yes/no answer.

In the old days (for example when <a href="http://web.archive.org/web/19970717063350/http://www.stat.berkeley.edu/users/rafa/index.html" target="_blank">Rafa was in grad school</a>), computing time was precious and things had to be planned out carefully, starting with the planning of the experiment and continuing with the data collection and the analysis. In fact, much of current statistical education is still geared around the idea that computing is expensive, which is why we use things like asymptotic theorems and approximations even when we don&#8217;t really have to. Nowadays, there&#8217;s a bit of a &#8220;we&#8217;ll fix it in post&#8221; mentality, which values collecting as much data as possible when given the chance and figuring out what to do with it later. This kind of thinking can lead to (1) <a href="http://simplystatistics.org/post/25924012903/the-problem-with-small-big-data" target="_blank">small big data problems</a>; (2) poorly designed studies; (3) data that don&#8217;t really address the question of interest to everyone.

What if the cost of data analysis were not paid in dollars but were paid in some general unit of credibility. For example, Jeff&#8217;s hypothetical machine would do some of this.

> <span>By publishing all reports to figshare, it makes it even harder to fudge the data. If you fiddle with the data to try to get a result you want, there will be a “multiple testing paper trail” following you around. </span>

So with each additional analysis of the data, you get an additional piece of paper added to your analysis paper trail. People can look at the analysis paper trail and make of it what they will. Maybe they don&#8217;t care. Maybe having a ton of analyses discredits the final results. The point is that it&#8217;s there for all to see.

I do _not_ think what we need is better methods to deal with multiple testing. This is simply not a statistical issue. What we need is a way to increase the cost of data analysis by preserving the paper trail. So that people hesitate before they run all pairwise combinations of whatever. Reproducible research doesn&#8217;t really deal with this problem because reproducibility only really requires that the _final_ analysis is documented.

In other words, let the paper trail be the price of pushing the button.
