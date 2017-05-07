---
id: 1935
title: The Leek group policy for developing sustainable R packages
date: 2013-10-07T11:56:40+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_551572141565313
al2fb_facebook_link_time:
  - 2013-10-07T15:56:45+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1833388095
categories:
  - Uncategorized
slug: "the-leek-group-policy-for-developing-sustainable-r-packages"
---
As my group has grown over the past few years and I have more people writing software, I have started to progressively freak out more and more about how to make sure that the software is sustainable as students graduate and move on to bigger and better things. I am also concerned with maintaining quality of the software we are developing in a field where the pace of development/discovery is so high.

As a person who simultaneously (a) has no formal training in CS or software development and (b) believes that [if there is no software there is no paper](http://simplystatistics.org/2013/01/23/statisticians-and-computer-scientists-if-there-is-no-code-there-is-no-paper/) I am worried about creating a bunch of unsustainable software. So I solicited the advice of people around here who know more about it than I do and I collected my past experience with creating software and how I screwed it up. I put it all together in the [Leek group guide to building and maintaing software packages](https://github.com/jtleek/rpackages).

The guide covers (among other things):

  * When to start building a package
  * How to version the package
  * How to document the package
  * What not to include
  * How to build unit tests
  * How to create a vignette
  * The commitment I expect in terms of software maintenance

I put it on Github because I'm still not 100% sure I got it right. The policy takes effect as of now. But I would welcome feedback/pull requests on how we can improve the policy to make it better and reduce the probability that I end up with a bunch of broken packages when all my awesome students, who are much better coders than me, eventually graduate.
