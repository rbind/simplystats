---
id: 2998
title: 'Why big data is in trouble: they forgot about applied statistics'
date: 2014-05-07T10:08:32+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_642287822493744
al2fb_facebook_link_time:
  - 2014-05-07T14:08:40+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/05/Screen-Shot-2014-05-06-at-9.06.38-PM.png
dsq_thread_id:
  - 2667532985
categories:
  - Uncategorized
slug: "why-big-data-is-in-trouble-they-forgot-about-applied-statistics"
---
This year the idea that statistics is important for big data has exploded into the popular media. Here are a few examples, starting with the Lazer et. al paper in Science that got the ball rolling on this idea.

  * [The parable of Google Flu: traps in big data analysis](http://gking.harvard.edu/files/gking/files/0314policyforumff.pdf)
  * [Big data are we making a big mistake?](http://www.ft.com/intl/cms/s/2/21a6e7d8-b479-11e3-a09a-00144feabdc0.html#axzz30INfAyMi)
  * [Google Flu Trends: the limits of big data](http://bits.blogs.nytimes.com/2014/03/28/google-flu-trends-the-limits-of-big-data/)
  * [Eight (No, Nine!) Problems with Big Data](http://www.nytimes.com/2014/04/07/opinion/eight-no-nine-problems-with-big-data.html)

All of these articles warn about issues that statisticians have been thinking about for a very long time: sampling populations, confounders, multiple testing, bias, and overfitting. In the rush to take advantage of the hype around big data, these ideas were ignored or not given sufficient attention.

One reason is that when you actually take the time to do an analysis right, with careful attention to all the sources of variation in the data, it is almost a law that you will have to make smaller claims than you could if you just shoved your data in a machine learning algorithm and reported whatever came out the other side.

The prime example in the press is Google Flu trends. Google Flu trends was originally developed as a machine learning algorithm for predicting the number of flu cases based on Google Search Terms. While the underlying data management and machine learning algorithms were correct, a misunderstanding about the uncertainties in the data collection and modeling process have led to highly inaccurate estimates over time. A statistician would have thought carefully about the sampling process, identified time series components to the spatial trend, investigated _why_ the search terms were predictive and tried to understand what the likely reason that Google Flu trends was working.

As we have seen, lack of expertise in statistics  has led to fundamental errors in both <a style="font-size: 16px;" href="http://simplystatistics.org/2012/02/27/the-duke-saga-starter-set/">genomic science</a> and <a style="font-size: 16px;" href="http://simplystatistics.org/2013/04/19/podcast-7-reinhart-rogoff-reproducibility/">economics</a>. In the first case a team of scientists led by Anil Potti created an algorithm for predicting the response to chemotherapy. This solution was widely praised in both the scientific and popular press. Unfortunately the researchers did not correctly account for all the sources of variation in the data set and had misapplied statistical methods and ignored major data integrity problems. The lead author and the editors who handled this paper didn't have the necessary statistical expertise, which led to major consequences and cancelled clinical trials.

Similarly, two economists Reinhart and Rogoff, published a paper claiming that GDP growth was slowed by high governmental debt. Later it was discovered that there was an error in an Excel spreadsheet they used to perform the analysis. But more importantly, the choice of weights they used in their regression model were questioned as being unrealistic and leading to dramatically different conclusions than the authors espoused publicly. The primary failing was a lack of sensitivity analysis to data analytic assumptions that any well-trained applied statisticians would have performed.

Statistical thinking has also been conspicuously absent from major public big data efforts so far. Here are some examples:

  * [White House Big Data Partners Workshop](http://www.nitrd.gov/nitrdgroups/index.php?title=White_House_Big_Data_Partners_Workshop) - 0/19 statisticians
  * [National Academy of Sciences Big Data Worskhop](http://sites.nationalacademies.org/DEPS/DEPS_087192) - 2/13 speakers statisticians
  * [Moore Foundation Data Science Environments](http://news.cs.washington.edu/2013/11/12/uw-berkeley-nyu-collaborate-on-37-8m-data-science-initiative/) - 0/3 directors from statistical background, 1/25 speakers at [OSTP event](http://lazowska.cs.washington.edu/MS/OSTP.release.pdf) about the environments was a statistician
  * [Original group that proposed NIH BD2K](http://acd.od.nih.gov/Data-and-Informatics-Implementation-Plan.pdf) - 0/18 participants statisticians
  * [Big Data rollout from the White House](http://nsf.gov/news/news_videos.jsp?cntn_id=123607&media_id=72174&org=NSF) - 0/4 thought leaders statisticians, 0/n participants statisticians.

One example of this kind of thinking is this insane table from the alumni magazine of the University of California which I found from this [This year the idea that statistics is important for big data has exploded into the popular media. Here are a few examples, starting with the Lazer et. al paper in Science that got the ball rolling on this idea.

  * [The parable of Google Flu: traps in big data analysis](http://gking.harvard.edu/files/gking/files/0314policyforumff.pdf)
  * [Big data are we making a big mistake?](http://www.ft.com/intl/cms/s/2/21a6e7d8-b479-11e3-a09a-00144feabdc0.html#axzz30INfAyMi)
  * [Google Flu Trends: the limits of big data](http://bits.blogs.nytimes.com/2014/03/28/google-flu-trends-the-limits-of-big-data/)
  * [Eight (No, Nine!) Problems with Big Data](http://www.nytimes.com/2014/04/07/opinion/eight-no-nine-problems-with-big-data.html)

All of these articles warn about issues that statisticians have been thinking about for a very long time: sampling populations, confounders, multiple testing, bias, and overfitting. In the rush to take advantage of the hype around big data, these ideas were ignored or not given sufficient attention.

One reason is that when you actually take the time to do an analysis right, with careful attention to all the sources of variation in the data, it is almost a law that you will have to make smaller claims than you could if you just shoved your data in a machine learning algorithm and reported whatever came out the other side.

The prime example in the press is Google Flu trends. Google Flu trends was originally developed as a machine learning algorithm for predicting the number of flu cases based on Google Search Terms. While the underlying data management and machine learning algorithms were correct, a misunderstanding about the uncertainties in the data collection and modeling process have led to highly inaccurate estimates over time. A statistician would have thought carefully about the sampling process, identified time series components to the spatial trend, investigated _why_ the search terms were predictive and tried to understand what the likely reason that Google Flu trends was working.

As we have seen, lack of expertise in statistics  has led to fundamental errors in both <a style="font-size: 16px;" href="http://simplystatistics.org/2012/02/27/the-duke-saga-starter-set/">genomic science</a> and <a style="font-size: 16px;" href="http://simplystatistics.org/2013/04/19/podcast-7-reinhart-rogoff-reproducibility/">economics</a>. In the first case a team of scientists led by Anil Potti created an algorithm for predicting the response to chemotherapy. This solution was widely praised in both the scientific and popular press. Unfortunately the researchers did not correctly account for all the sources of variation in the data set and had misapplied statistical methods and ignored major data integrity problems. The lead author and the editors who handled this paper didn't have the necessary statistical expertise, which led to major consequences and cancelled clinical trials.

Similarly, two economists Reinhart and Rogoff, published a paper claiming that GDP growth was slowed by high governmental debt. Later it was discovered that there was an error in an Excel spreadsheet they used to perform the analysis. But more importantly, the choice of weights they used in their regression model were questioned as being unrealistic and leading to dramatically different conclusions than the authors espoused publicly. The primary failing was a lack of sensitivity analysis to data analytic assumptions that any well-trained applied statisticians would have performed.

Statistical thinking has also been conspicuously absent from major public big data efforts so far. Here are some examples:

  * [White House Big Data Partners Workshop](http://www.nitrd.gov/nitrdgroups/index.php?title=White_House_Big_Data_Partners_Workshop) - 0/19 statisticians
  * [National Academy of Sciences Big Data Worskhop](http://sites.nationalacademies.org/DEPS/DEPS_087192) - 2/13 speakers statisticians
  * [Moore Foundation Data Science Environments](http://news.cs.washington.edu/2013/11/12/uw-berkeley-nyu-collaborate-on-37-8m-data-science-initiative/) - 0/3 directors from statistical background, 1/25 speakers at [OSTP event](http://lazowska.cs.washington.edu/MS/OSTP.release.pdf) about the environments was a statistician
  * [Original group that proposed NIH BD2K](http://acd.od.nih.gov/Data-and-Informatics-Implementation-Plan.pdf) - 0/18 participants statisticians
  * [Big Data rollout from the White House](http://nsf.gov/news/news_videos.jsp?cntn_id=123607&media_id=72174&org=NSF) - 0/4 thought leaders statisticians, 0/n participants statisticians.

One example of this kind of thinking is this insane table from the alumni magazine of the University of California which I found from this](http://www.chalmers.se/en/areas-of-advance/ict/calendar/Pages/Terry-Speed.aspx) (via Rafa, go watch his talk right now, it gets right to the heart of the issue).  It shows a fundamental disrespect for applied statisticians who have developed serious expertise in a range of scientific disciplines.

<p style="text-align: center;">
  <a href="http://simplystatistics.org/2014/05/07/why-big-data-is-in-trouble-they-forgot-about-applied-statistics/screen-shot-2014-05-06-at-9-06-38-pm/" rel="attachment wp-att-3032"><img class=" wp-image-3032 aligncenter" alt="Screen Shot 2014-05-06 at 9.06.38 PM" src="http://simplystatistics.org/wp-content/uploads/2014/05/Screen-Shot-2014-05-06-at-9.06.38-PM.png" width="362" height="345" /></a>
</p>

All of this leads to two questions:

  1. Given the importance of statistical thinking why aren't statisticians involved in these initiatives?
  2. When thinking about the big data era, what are some statistical ideas we've already figured out?

<p dir="ltr">
