---
id: 3923
title: 'Data science done well looks easy - and that is a big problem for data scientists'
date: 2015-03-17T10:47:12+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_782867448435780
al2fb_facebook_link_time:
  - 2015-03-17T14:47:19+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3602973282
categories:
  - Uncategorized
slug: "data-science-done-well-looks-easy-and-that-is-a-big-problem-for-data-scientists"
---
Data science has a ton of different definitions. For the purposes of this post I'm going to use the definition of data science we used when creating our Data Science program online. Data science is:

> Data science is the process of formulating a quantitative question that can be answered with data, collecting and cleaning the data, analyzing the data, and communicating the answer to the question to a relevant audience.

In general the data science process is iterative and the different components blend together a little bit. But for simplicity lets discretize the tasks into the following 7 steps:

  1. Define the question of interest
  2. Get the data
  3. Clean the data
  4. Explore the data
  5. Fit statistical models
  6. Communicate the results
  7. Make your analysis reproducible

A good data science project answers a real scientific or business analytics question. In almost all of these experiments the vast majority of the analyst's time is spent on getting and cleaning the data (steps 2-3) and communication and reproducibility (6-7). In most cases, if the data scientist has done her job right the statistical models don't need to be incredibly complicated to identify the important relationships the project is trying to find. In fact, if a complicated statistical model seems necessary, it often means that you don't have the right data to answer the question you really want to answer. One option is to spend a huge amount of time trying to tune a statistical model to try to answer the question but serious data scientist's usually instead try to go back and get the right data.

The result of this process is that most well executed and successful data science projects don't (a) use super complicated tools or (b) fit super complicated statistical models. The characteristics of the most successful data science projects I've evaluated or been a part of are: (a) a laser focus on solving the scientific problem, (b) careful and thoughtful consideration of whether the data is the right data and whether there are any lurking confounders or biases and (c) relatively simple statistical models applied and interpreted skeptically.

It turns out doing those three things is actually surprisingly hard and very, very time consuming. It is my experience that data science projects take a solid 2-3 times as long to complete as a project in theoretical statistics. The reason is that inevitably the data are a mess and you have to clean them up, then you find out the data aren't quite what you wanted to answer the question, so you go find a new data set and clean it up, etc. After a ton of work like that, you have a nice set of data to which you fit simple statistical models and then it looks **super easy **to someone who either doesn't know about the data collection and cleaning process or doesn't care.

This poses a major public relations problem for serious data scientists. When you show someone a good data science project they almost invariably think "oh that is easy" or "that is just a trivial statistical/machine learning model" and don't see all of the work that goes into solving the real problems in data science. A concrete example of this is in academic statistics. It is customary for people to show theorems in their talks and maybe even some of the proof. This gives people working on theoretical projects an opportunity to "show their stuff" and demonstrate how good they are. The equivalent for a data scientist would be showing how they found and cleaned multiple data sets, merged them together, checked for biases, and arrived at a simplified data set. Showing the "proof" would be equivalent to showing how they matched IDs. These things often don't look nearly as impressive in talks, particularly if the audience doesn't have experience with how incredibly delicate real data analysis is. I imagine versions of this problem play out in industry as well (candidate X did a good analysis but it wasn't anything special, candidate Y used Hadoop to do BIG DATA!).

The really tricky twist is that bad data science looks easy too. You can scrape a data set off the web and slap a machine learning algorithm on it no problem. So how do you judge whether a data science project is really "hard" and whether the data scientist is an expert? Just like with anything, there is no easy shortcut to evaluating data science projects. You have to ask questions about the details of how the data were collected, what kind of biases might exist, why they picked one data set over another, etc.  In the meantime, don't be fooled by what looks like simple data science - [it can often be pretty effective](http://fivethirtyeight.com/interactives/senate-forecast/).

&nbsp;

_Editor's note: If you like this post, you might like my pay-what-you-want book Elements of Data Analytic Style: <https://leanpub.com/datastyle>_

&nbsp;
