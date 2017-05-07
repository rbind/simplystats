---
id: 648
title: Statistical illiteracy may lead to parents panicking about Autism.
date: 2012-11-30T13:09:01+00:00
author: Jeff Leek
dsq_thread_id:
  - 951802366
categories:
  - Uncategorized
tags:
  - p-values
  - Rant
  - statistical literacy
slug: "statistical-illiteracy-may-lead-to-parents-panicking-about-autism"
---
I just was doing my morning reading of a few news sources and stumbled across this [Huffington Post article](http://www.huffingtonpost.com/2012/11/29/autism-risk-babies-cries_n_2211729.html) talking about research correlating babies cries to autism. It suggests that the sound of a babies cries may predict their future risk for autism. As the parent of a young son, this obviously caught my attention in a very lizard-brain, caveman sort of way. I couldn't find a link to the research paper in the article so I did some searching and found out this result is also being covered by [Time](http://healthland.time.com/2012/11/28/can-a-babys-cry-be-a-clue-to-autism/), [Science Daily](http://www.sciencedaily.com/releases/2012/11/121127111352.htm), [Medical Daily](http://www.medicaldaily.com/articles/13324/20121129/baby-s-cry-reveal-autism-risk.htm), and a bunch of other news outlets.

Now thoroughly freaked, I looked online and found the pdf of the [original research article](https://www.ewi-ssl.pitt.edu/psychology/admin/faculty-publications/201209041019040.Sheinkopf%20in%20press.pdf). I started looking at the statistics and took a deep breath. Based on the analysis they present in the article there is absolutely no statistical evidence that a babies' cries can predict autism. Here are the flaws with the study:

  1. **Small sample size**. The authors only recruited 21 at risk infants and 18 healthy infants. Then, because of data processing issues, only ended up analyzing 7 high autistic risk versus 5 low autistic-risk in one analysis and 10 versus 6 in another. That is no where near a representative sample and barely qualifies as a pilot study.
  2. **Major and unavoidable confounding**. The way the authors determined high autistic risk versus low risk was based on whether an older sibling had autism. Leaving aside the quality of this metric for measuring risk of autism, there is a major confounding factor: the families of the high risk children all had an older sibling with autism and the families of the low risk children did not! It would not be surprising at all if children with one autistic older sibling might get a different kind of attention and hence cry differently regardless of their potential future risk of autism.
  3. **No correction for multiple testing**. This is one of the oldest problems in statistical analysis. It is also one that is a consistent culprit of false positives in epidemiology studies. XKCD [even did a cartoon](http://xkcd.com/882/) about it! They tested 9 variables measuring the way babies cry and tested each one with a statistical hypothesis test. They did not correct for multiple testing. So I gathered resulting p-values and did the correction [for them](https://gist.github.com/4177366). It turns out that after adjusting for multiple comparisons, nothing is significant at the usual P < 0.05 level, which would probably have prevented publication.
  
    

Taken together, these problems mean that the statistical analysis of these data do not show any connection between crying and autism.

The problem here exists on two levels. First, there was a failing in the statistical evaluation of this manuscript at the peer review level. Most statistical referees would have spotted these flaws and pointed them out for such a highly controversial paper. A second problem is that news agencies report on this result and despite paying lip-service to potential limitations, are not statistically literate enough to point out the major flaws in the analysis that reduce the probability of a true positive. Should journalists have some minimal in statistics that allows them to determine whether a result is likely to be a false positive to save us parents a lot of panic?

&nbsp;
