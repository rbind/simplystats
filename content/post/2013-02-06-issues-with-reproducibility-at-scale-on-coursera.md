---
id: 996
title: Issues with reproducibility at scale on Coursera
date: 2013-02-06T10:11:20+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_458559904199871
al2fb_facebook_link_time:
  - 2013-02-06T15:11:23+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1068686839
categories:
  - Uncategorized
slug: "issues-with-reproducibility-at-scale-on-coursera"
---
As you know, we are [big fans of reproducible research](http://simplystatistics.org/?s=reproducible+research) here at Simply Statistics. [As you know, we are [big fans of reproducible research](http://simplystatistics.org/?s=reproducible+research) here at Simply Statistics.](http://simplystatistics.org/2012/02/27/the-duke-saga-starter-set/) around the lack of reproducibility in the analyses performed by Anil Potti and subsequent fallout drove the importance of this topic home.

So when I started teaching a course on [Data Analysis for Coursera](https://www.coursera.org/course/dataanalysis), of course I wanted to focus on reproducible research. The students in the class will be performing two data analyses during the course. They will be peer evaluated using a rubric specifically designed for evaluating data analyses at scale. One of the components of the rubric was to evaluate whether the code people submitted with their assignments reproduced all the numbers in the assignment.

Unfortunately, I just had to cancel the reproducibility component of the first data analysis assignment. Here are the things I realized while trying to set up the process that may seem obvious but weren't to me when I was designing the rubric:

  1. **Security** I realized (thanks to a very smart subset of the students in the class who posted on the message boards) that there is a major security issue with exchanging R code and data files with each other. Even if they use only the data downloaded from the official course website, it is possible that people could use the code to try to hack/do nefarious things to each other. The students in the class are great and the probability of this happening is small, but with a class this size, it isn't worth the risk.
  2. **Compatibility** I'm requiring that people use R for the course. Even so, people are working on every possible operating system, with many different versions of R . In this scenario, it is entirely conceivable for a person to write totally reproducible code that works on their machine but won't work on a random peer-reviewers machine
  3. **Computing Resources **The range of computing resources used by people in the class is huge. Everyone from people using modern clusters to people running on a single old beat up laptop. Inefficient code on a fast computer is fine, but on a slow computer with little memory it could mean the difference between reproducibility and crashed computers.

Overall, I think the solution is to run some kind of EC2 instance with a standardized set of software. That is the only thing I can think of that would be scalable to a class this size. On the other hand that would both be expensive, a pain to maintain, and would require everyone to run code on EC2.

Regardless, it is a super interesting question. How do you do reproducibility at scale?
