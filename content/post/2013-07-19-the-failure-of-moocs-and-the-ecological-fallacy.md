---
id: 1521
title: The "failure" of MOOCs and the ecological fallacy
date: 2013-07-19T10:52:41+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_518712938184567
al2fb_facebook_link_time:
  - 2013-07-19T14:52:49+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1512266524
categories:
  - Uncategorized
slug: "the-failure-of-moocs-and-the-ecological-fallacy"
---
At first blush [the news out of San Jose State](http://www.sfgate.com/news/article/San-Jose-State-suspends-online-courses-4672870.php) that the partnership with Udacity is being temporarily suspended is bad news for MOOCs. It is particularly bad news since the main reason for the suspension is poor student performance on exams. I think in the PR game there is certainly some reason to be disappointed in the failure of this first big experiment, but as someone who loves the idea of high-throughput education, I think that this is primarily a good learning experience.

The money quote in my mind is:

> Officials say the data suggests many of the students had little college experience or held jobs while attending classes. Both populations traditionally struggle with college courses.
> 
> "We had this element that we picked, student populations who were not likely to succeed," Thrun said.

I think it was a really nice idea to try to expand educational opportunities to students who traditionally dont have time for college or have struggled with college. But this represents a pretty major confounder in the analysis comparing educational outcomes between students in the online and in person classes. There is a lot of room for the [ecological fallacy](http://en.wikipedia.org/wiki/Ecological_fallacy) to make it look like online classes are failing. They could very easily address this problem by using a subset of students randomized in the right way. There are even really good papers - [like this one by Glynn](http://scholar.harvard.edu/aglynn/publications/alleviating-linear-ecological-bias-and-optimal-design-subsample-data) - on the optimal way to do this.

I think there are some potential lessons learned here from this PR problem:

  1. <span style="line-height: 15.994318008422852px;"><strong>We need good study design in high-throughput education</strong>. I don't know how rigorous the study design was in the case of the San Jose State experiment, but if the comparison is just whoever signed up in class versus whoever signed up online we have a long way to go in evaluating these classes.<br /> </span>
  2. **We need coherent programs online** It looks like they offered a scattered collection of mostly lower level courses online (elementary statistics, college algebra, entry level math, introduction to programming and introduction to psychology). These courses are obvious ones for picking off with MOOCs since they are usually large lecture-style courses in person as well. But they are also hard classes to "get motivated for" if there isn't a clear end goal in mind. If you are learning college algebra online but don't have a clear path to using that education it might make more sense to start with the [Khan Academy](https://www.khanacademy.org/math/algebra)
  3. **We need to parse variation in educational **<span style="color: #000000;"><b>attainment</b></span>.  It makes sense to evaluate in class and online students with similar instruments. But I wonder if there is a way to estimate the components of variation: motivation, prior skill, time dedicated to the course, learning from course materials, learning from course discussion, and learning for different types of knowledge (e.g. vocational versus theoretical) using statistical models. I think that kind of modeling would offer a much more clear picture of whether these programs are "working".
