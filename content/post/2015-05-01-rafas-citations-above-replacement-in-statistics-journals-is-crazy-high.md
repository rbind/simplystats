---
id: 3989
title: "Rafa's citations above replacement in statistics journals is crazy high."
date: 2015-05-01T11:18:47+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_801785686543956
al2fb_facebook_link_time:
  - 2015-05-01T15:18:54+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/05/journals-300x300.png
dsq_thread_id:
  - 3728261472
categories:
  - Uncategorized
slug: "rafas-citations-above-replacement-in-statistics-journals-is-crazy-high"
---
_Editor's note:  I thought it would be fun to do some bibliometrics on a Friday. This is super hacky and the CAR/Y stat should not be taken seriously. _

I downloaded data on the 400 most cited papers between 2000-2010 in some statistical journals from [Web of Science](webofscience.com/). Here is a boxplot of the average number of citations per year (from publication date - 2015) to these papers in the journals Annals of Statistics, Biometrics, Biometrika, Biostatistics, JASA, Journal of Computational and Graphical Statistics, Journal of Machine Learning Research, and Journal of the Royal Statistical Society Series B.

&nbsp;

[<img class="aligncenter wp-image-4001" src="http://simplystatistics.org/wp-content/uploads/2015/05/journals-300x300.png" alt="journals" width="500" height="500" srcset="http://simplystatistics.org/wp-content/uploads/2015/05/journals-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/05/journals-1024x1024.png 1024w, http://simplystatistics.org/wp-content/uploads/2015/05/journals-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/05/journals.png 1050w" sizes="(max-width: 500px) 100vw, 500px" />](http://simplystatistics.org/wp-content/uploads/2015/05/journals.png)

&nbsp;

There are several interesting things about this graph right away. One is that JASA has the highest median number of citations, but has fewer "big hits" (papers with 100+ citations/year) than Annals of Statistics, JMLR, or JRSS-B. Another thing is how much of a lottery developing statistical methods seems to be. Most papers, even among the 400 most cited, have around 3 citations/year on average. But a few lucky winners have 100+ citations per year. One interesting thing for me is the papers that get 10 or more citations per year but aren't huge hits. I suspect these are the papers that [solve one problem well but don't solve the most general problem ever](http://simplystatistics.org/2014/07/25/academic-statisticians-there-is-no-shame-in-developing-statistical-solutions-that-solve-just-one-problem/).

Something that jumps out from that plot is the outlier for the journal Biostatistics. One of their papers is cited 367.85 times per year. The next nearest competitor is 67.75 and it is 19 standard deviations above the mean! The paper in question is: "Exploration, normalization, and summaries of high density oligonucleotide array probe level data", which is the paper that introduced RMA, one of the most popular methods for pre-processing microarrays ever created. It was written by Rafa and colleagues. It made me think of the statistic "[wins above replacement](http://www.fangraphs.com/library/misc/war/)" which quantifies how many extra wins a baseball team gets by playing a specific player in place of a league average replacement.

What about a "citations /year above replacement" statistic where you calculate for each journal:

> Median number of citations to a paper/year with Author X - Median number of citations/year to an average paper in that journal

Then average this number across journals. This attempts to quantify how many extra citations/year a person's papers generate compared to the "average" paper in that journal. For Rafa the numbers look like this:

  * Biostatistics: Rafa = 15.475, Journal = 1.855, CAR/Y =  13.62
  * JASA: Rafa = 74.5, Journal = 5.2, CAR/Y = 69.3
  * Biometrics: Rafa = 4.33, Journal = 3.38, CAR/Y = 0.95

So Rafa's citations above replacement is (13.62 + 69.3 + 0.95)/3 =  27.96! There are a couple of reasons why this isn't a completely accurate picture. One is the low sample size, the second is the fact that I only took the 400 most cited papers in each journal. Rafa has a few papers that didn't make the top 400 for journals like JASA - which would bring down his CAR/Y.

&nbsp;
