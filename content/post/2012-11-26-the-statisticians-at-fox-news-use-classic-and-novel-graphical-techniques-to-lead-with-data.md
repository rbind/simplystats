---
id: 623
title: The statisticians at Fox News use classic and novel graphical techniques to lead with data
date: 2012-11-26T10:04:47+00:00
author: Jeff Leek
dsq_thread_id:
  - 944786318
categories:
  - Uncategorized
tags:
  - data visualization
  - fox news
  - graphs
slug: "the-statisticians-at-fox-news-use-classic-and-novel-graphical-techniques-to-lead-with-data"
---
Depending on where you land in the political spectrum you may either love or despise Fox News. But regardless of your political affiliation, you have to recognize that their statisticians are well-trained in the art of using graphics to persuade folks of a particular viewpoint. I'm not the first to recognize that the graphics department uses some clever tricks to make certain points. But when flipping through the graphs I thought it was interesting to highlight some of the techniques they use to persuade. Some are clearly classics from the literature, but some are (as far as I can tell) newly developed graphical "persuasion" techniques.

**Truncating the y-axis**

<img class="alignnone" src="http://mediamatters.org/static/images/item/fnc-an-20120809-welfarechart-2.jpg" alt="" width="354" height="266" />

([via](http://mediamatters.org/blog/2012/08/09/today-in-dishonest-fox-charts-government-aid-ed/189223))

and

<img class="alignnone" src="http://blogs-images.forbes.com/naomirobbins/files/2012/08/Bush_cuts2.png" alt="" width="386" height="286" />

([via](http://www.forbes.com/sites/naomirobbins/2012/08/04/another-misleading-graph-of-romneys-tax-plan/))

This is a pretty common technique for leading the question in statistical graphics, as discussed [here](http://www.amazon.com/How-Lie-Statistics-Darrell-Huff/dp/0393310728) and elsewhere.

**Numbers that don't add up**

I'm not sure whether this one is intentional or not, but it crops up in several places and I think is a unique approach to leading information, at least I couldn't find a reference in the literature. Basically the idea is to produce percentages that don't add to one, allowing multiple choices to have closer percentages than they probably should:

<img class="alignnone" src="http://24.media.tumblr.com/tumblr_m9xia70vbR1rfnvq8o1_500.jpg" alt="" width="300" height="150" />

([via](http://badgraphs.tumblr.com/))

or to suggest that multiple options are all equally likely, but also supported by large percentages:

<img class="alignnone" src="http://flowingdata.com/wp-content/uploads/yapb_cache/app15725951258947184.acq6gmp0hf4sowckg80ssc8wg.2xne1totli0w8s8k0o44cs0wc.th.png" alt="" width="329" height="247" />

([via](http://flowingdata.com/2009/11/26/fox-news-makes-the-best-pie-chart-ever/))

**Changing the units of comparison**

When two things are likely to be very similar, one approach to leading information is to present variables in different units. Here is an example where total spending for 2010-2013 is compared to deficits in 2008. This can also be viewed as an example of [not labeling the axes](http://www.sao.state.tx.us/resources/Manuals/Method/data/12DECEPD.pdf).

<img class="alignnone" src="http://mediamatters.org/static/images/item/fnc-ff-20120926-spending.jpg" alt="" width="270" height="215" />

**** ([via](http://mediamatters.org/blog/2012/09/26/by-the-way-heres-another-dishonest-fox-news-gra/190141))

<span style="color: #000000;"><strong>Changing the magnitude of units at different x-values</strong></span>

Here is a plot where the changes in magnitude at high x-values are higher than changes in magnitude at lower x-values. Again, I think this is actually a novel graphical technique for leading readers in one direction.

<img class="alignnone" src="http://freethoughtblogs.com/lousycanuck/files/2011/12/121212_fox.jpg" alt="" width="257" height="155" />

([via](http://freethoughtblogs.com/lousycanuck/2011/12/14/im-better-at-graphs-than-fox-news/))

To really see the difference, compare to the graph with common changes in magnitude at all x-values.

<img class="alignnone" src="http://freethoughtblogs.com/lousycanuck/files/2011/12/us-unemployment2011.png" alt="" width="341" height="198" />

([via](http://freethoughtblogs.com/lousycanuck/2011/12/14/im-better-at-graphs-than-fox-news/))

**Changing trends by sub-sampling x values** (also misleading chart titles)

Here is a graph that shows unemployment rates over time and the corresponding chart with the x-axis appropriately laid out.

<img class="alignnone" src="http://onlinestatbook.com/2/graphing_distributions/graphics/graph2.png" alt="" width="282" height="163" />

<img class="alignnone" src="http://onlinestatbook.com/2/graphing_distributions/graphics/graph3.png" alt="" width="418" height="212" />

([via](http://onlinestatbook.com/2/graphing_distributions/graphing_distributionsSA.html))

One could argue these are mistakes, but based on the consistent displays of data supporting one viewpoint, I think these are likely the result of someone with real statistical training who is using data in a very specific way to make a point. Obviously, Fox News isn't the only organization that does this sort of thing, but it is interesting to see how much effort they put into statistical graphics.
