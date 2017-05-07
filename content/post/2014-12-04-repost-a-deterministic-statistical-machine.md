---
id: 3619
title: 'Repost: A deterministic statistical machine'
date: 2014-12-04T13:13:45+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_733851026670756
al2fb_facebook_link_time:
  - 2014-12-04T18:13:51+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 3290704423
categories:
  - Uncategorized
slug: "repost-a-deterministic-statistical-machine"
---
_Editor's note: This is a repost of our previous post about deterministic statistical machines. It is inspired by the [recent announcement](https://gigaom.com/2014/12/02/google-is-funding-an-artificial-intelligence-for-data-science/) that the [Automatic Statistician ](http://www.automaticstatistician.com/)received funding from Google. In 2012 we also applied to Google for a small research award to study this same problem, but didn't get it. In the interest of extreme openness like Titus Brown or Ethan White, [here is our application](https://docs.google.com/document/d/1ERL40_LYt4U_vYx2rUxPvIhCrxnpld3dcrtEiCeWn8U/edit) we submitted to Google. I showed this to a friend who told me the reason we didn't get it is because our proposal was missing two words: "artificial", "intelligence". _

As Roger pointed out the most recent batch of Y Combinator startups included a bunch of <a href="http://simplystatistics.org/post/29964925728/data-startups-from-y-combinator-demo-day" target="_blank">data-focused</a> companies. One of these companies, <a href="https://www.statwing.com/" target="_blank">StatWing</a>, is a web-based tool for data analysis that looks like an improvement on SPSS with more plain text, more visualization, and a lot of the technical statistical details “under the hood”. I first read about StatWing on TechCrunch, where the title, <a href="http://techcrunch.com/2012/08/16/how-statwing-makes-it-easier-to-ask-questions-about-data-so-you-dont-have-to-hire-a-statistical-wizard/" target="_blank">“How Statwing Makes It Easier To Ask Questions About Data So You Don’t Have To Hire a Statistical Wizard”</a>.

StatWing looks super user-friendly and the idea of democratizing statistical analysis so more people can access these ideas is something that appeals to me. But, as one of the aforementioned statistical wizards, this had me freaked out for a minute. Once I looked at the software though, I realized it suffers from the same problem that most “user-friendly” statistical software suffers from. It makes it really easy to screw up a data analysis. It will tell you when something is significant and if you don’t like that it isn’t, you can keep slicing and dicing the data until it is. The key issue behind getting insight from data is knowing when you are fooling yourself with confounders, or small effect sizes, or overfitting. StatWing looks like an improvement on the UI experience of data analysis, but it won’t prevent false positives that plague science and cost business big $$.

So I started thinking about what kind of software would prevent these sort of problems while still being accessible to a big audience. My idea is a “deterministic statistical machine”. Here is how it works, you input a data set and then specify the question you are asking (is variable Y related to variable X? can i predict Z from W?) then, depending on your question, it uses a deterministic set of methods to analyze the data. Say regression for inference, linear discriminant analysis for prediction, etc. But the method is fixed and deterministic for each question. It also performs a pre-specified set of checks for outliers, confounders, missing data, <a href="http://www.nature.com/news/the-data-detective-1.10937" target="_blank">maybe even data fudging</a>. It generates a report with a markdown tool and then immediately publishes the result to <a href="http://figshare.com/" target="_blank">figshare</a>.

The advantage is that people can get their data-related questions answered using a standard tool. It does a lot of the “heavy lifting” in checking for potential problems and produces nice reports. But it is a deterministic algorithm for analysis so overfitting, fudging the analysis, etc. are harder. By publishing all reports to figshare, it makes it even harder to fudge the data. If you fiddle with the data to try to get a result you want, there will be a “multiple testing paper trail” following you around.

The DSM should be a web service that is easy to use. Anybody want to build it? Any suggestions for how to do it better?
