---
id: 1172
title: I wish economists made better plots
date: 2013-04-16T18:14:59+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_484228664966328
al2fb_facebook_link_time:
  - 2013-04-16T22:15:04+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/04/Screen-Shot-2013-04-16-at-5.48.06-PM.png
dsq_thread_id:
  - 1216473026
categories:
  - Uncategorized
slug: "i-wish-economists-made-better-plots"
---
I'm seeing lots of traffic on a big-time economics article by that failed to reproduce and here are my quick thoughts. You can read a pretty good summary here by [Mike Konczal](http://www.nextnewdeal.net/rortybomb/researchers-finally-replicated-reinhart-rogoff-and-there-are-serious-problems).

Quick background: Carmen Reinhart and Kenneth Rogoff wrote an [influential paper](http://www.nber.org/papers/w15639.pdf) that was used by many to justify the need for austerity measures taken by governments to reduce debts relative to GDP. Yesterday, Thomas Herndon, Michael Ash, and Robert Pollin (HAP) [released a paper](http://www.peri.umass.edu/236/hash/31e2ff374b6377b2ddec04deaa6388b1/publication/566/) where they reproduced the Reinhart-Rogoff (RR) analysis and noted a few irregularities or errors. In their abstract, HAP claim that they "find that coding errors, selective exclusion of available data, and unconventional weighting of summary statistics [in the RR analysis] lead to serious errors that inaccurately represent the relationship between public debt and GDP growth among 20 advanced economies in the post-war period.

It appears there were three points made by HAP: (1) RR excluded some important data from their final analysis; (2) RR weighted countries in a manner that was _not_ proportional to the number of years they contributed to the dataset (RR used equal weighting of countries); and (3) there was an error in RR's Excel formula which resulted in them inadvertently leaving out five countries from their final analysis.

The bottom line is shown in HAP's Figure 1, which I reproduce below (on the basis of fair use):

[<img class="alignright size-full wp-image-1173" alt="HAP Analysis" src="http://simplystatistics.org/wp-content/uploads/2013/04/Screen-Shot-2013-04-16-at-5.48.06-PM.png" width="768" height="992" srcset="http://simplystatistics.org/wp-content/uploads/2013/04/Screen-Shot-2013-04-16-at-5.48.06-PM-232x300.png 232w, http://simplystatistics.org/wp-content/uploads/2013/04/Screen-Shot-2013-04-16-at-5.48.06-PM.png 768w" sizes="(max-width: 768px) 100vw, 768px" />](http://simplystatistics.org/wp-content/uploads/2013/04/Screen-Shot-2013-04-16-at-5.48.06-PM.png)

From the plot you can see that the HAP's adjusted analysis (circles) more or less coincides with RR's analysis (diamonds) except for the last categories of countries with debt/GDP ratios over 90%. In that category RR's analysis shows a large drop in growth whereas HAP's analysis shows a more or less smooth decline (but still positive growth).

To me, it seems that the incorrect Excel formula is a real error, but easily fixed. It also seemed to have the least impact on the final analysis. The other two problems, which had far bigger impacts, might have some explanation that I'm not aware of. I am not an economist so I await others to weigh in. RR apparently do not comment on the exclusion of certain data points or on the weighting scheme so it's difficult to say what the thinking was, whether it was inadvertent or purposeful.

In summary, so what? Here's what I think:

  1. **Is there some fishiness?** Sure, but this is not the Potti-Nevins scandal a la economics. I suppose it's possible RR manipulated the analysis to get the answer austerity hawks were looking for, but we don't have the evidence yet and this just doesn't feel like that kind of thing.
  2. **What's the counterfactual?** Or, what would have happened if the analysis had been done the way HAP propose? Would the world have embraced pro-growth policies by taking on a greater debt burden? My guess is no. Austerity hawks would have found some other study that supported their claims (and in fact there was at least one other).
  3. RR's original analysis did not contain a plot like Figure 1 in HAP's analysis, which I personally find very illuminating. From HAP's figure, you can see that there's quite a bit of variation across countries and perhaps an overall downward trend. I'm not sure I would have dramatically changed my conclusion if I had done the HAP analysis instead of the RR analysis. My point is that **plots like this, which _show the variability_, are very important**._
  
_ 
  4. **People see what they want to see**. I would not be surprised to see some claim that HAP's analysis supports the austerity conclusion because growth under high debt loads is much lower (almost 50%!) than under low debt loads.
  5. **If RR's analysis had been correct, should they have even made the conclusions they made?** RR indicated that there was a "threshold" at 90% debt/GDP. My experience is that statements about thresholds, are generally very hard to make, even with good data. I wonder what other more knowledgable people think of the original conclusions.
  6. **If the data had been made available sooner, this problem would have been fixed sooner**. But in my opinion, that's all that would have happened.

The vibe on the Internets seems to be that if only this problem had been identified sooner, the world would be a better place. But my cynical mind says, uh, no. You can toss this incident in the very large bucket of papers with some technical errors that are easily fixed. Thankfully, someone found these errors and fixed them, and that's a good thing. Science moves on.

UPDATE: Reinhart-Rogoff [respond](http://www.slate.com/blogs/moneybox/2013/04/16/reinhart_and_rogoff_respond_researchers_say_high_debt_is_associated_with.html).

UPDATE 2: Reinhart-Rogoff more [detailed response](http://blogs.wsj.com/economics/2013/04/17/reinhart-rogoff-admit-excel-mistake-rebut-other-critiques/).
