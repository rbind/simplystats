---
id: 90
title: A deterministic statistical machine
date: 2012-08-27T14:00:06+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/30315018436/a-deterministic-statistical-machine
tumblr_simplystatistics_id:
  - 30315018436
dsq_thread_id:
  - 935169752
categories:
  - Uncategorized
tags:
  - data
  - deterministic statistical machine
  - diy
  - dsm
  - startup
  - y combinator
slug: "a-deterministic-statistical-machine"
---
As Roger pointed out the most recent batch of Y Combinator startups included a bunch of <a href="http://simplystatistics.org/post/29964925728/data-startups-from-y-combinator-demo-day" target="_blank">data-focused</a> companies. One of these companies, <a href="https://www.statwing.com/" target="_blank">StatWing</a>, is a web-based tool for data analysis that looks like an improvement on SPSS with more plain text, more visualization, and a lot of the technical statistical details &#8220;under the hood&#8221;. I first read about StatWing on TechCrunch, where the title, <a href="http://techcrunch.com/2012/08/16/how-statwing-makes-it-easier-to-ask-questions-about-data-so-you-dont-have-to-hire-a-statistical-wizard/" target="_blank">&#8220;How Statwing Makes It Easier To Ask Questions About Data So You Don’t Have To Hire a Statistical Wizard&#8221;</a>.

StatWing looks super user-friendly and the idea of democratizing statistical analysis so more people can access these ideas is something that appeals to me. But, as one of the aforementioned statistical wizards, this had me freaked out for a minute. Once I looked at the software though, I realized it suffers from the same problem that most &#8220;user-friendly&#8221; statistical software suffers from. It makes it really easy to screw up a data analysis. It will tell you when something is significant and if you don&#8217;t like that it isn&#8217;t, you can keep slicing and dicing the data until it is. The key issue behind getting insight from data is knowing when you are fooling yourself with confounders, or small effect sizes, or overfitting. StatWing looks like an improvement on the UI experience of data analysis, but it won&#8217;t prevent false positives that plague science and cost business big $$. 

So I started thinking about what kind of software would prevent these sort of problems while still being accessible to a big audience. My idea is a &#8220;deterministic statistical machine&#8221;. Here is how it works, you input a data set and then specify the question you are asking (is variable Y related to variable X? can i predict Z from W?) then, depending on your question, it uses a deterministic set of methods to analyze the data. Say regression for inference, linear discriminant analysis for prediction, etc. But the method is fixed and deterministic for each question. It also performs a pre-specified set of checks for outliers, confounders, missing data, <a href="http://www.nature.com/news/the-data-detective-1.10937" target="_blank">maybe even data fudging</a>. It generates a report with a markdown tool and then immediately publishes the result to <a href="http://figshare.com/" target="_blank">figshare</a>. 

The advantage is that people can get their data-related questions answered using a standard tool. It does a lot of the &#8220;heavy lifting&#8221; in checking for potential problems and produces nice reports. But it is a deterministic algorithm for analysis so overfitting, fudging the analysis, etc. are harder. By publishing all reports to figshare, it makes it even harder to fudge the data. If you fiddle with the data to try to get a result you want, there will be a &#8220;multiple testing paper trail&#8221; following you around. 

The DSM should be a web service that is easy to use. Anybody want to build it? Any suggestions for how to do it better? 
