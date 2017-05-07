---
id: 2297
title: The key word in "Data Science" is not Data, it is Science
date: 2013-12-12T15:24:42+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_580881558634371
al2fb_facebook_link_time:
  - 2013-12-12T20:24:47+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2046616271
categories:
  - Uncategorized
slug: "the-key-word-in-data-science-is-not-data-it-is-science"
---
One of my colleagues was just at a conference where they saw a presentation about using data to solve a problem where data had previously not been abundant. The speaker claimed the data were "big data" and a question from the audience was: "Well, that isn't really big data is it, it is only X Gigabytes".

While that exact question would elicit groans from most people who work with data, I think it highlights one of the key problems with the thinking around data science. Most people hyping data  science have focused on the first word: data. They care about volume and velocity and whatever other buzzwords describe data that is too big for you to analyze in Excel. This hype about the size (relative or absolute) of the data being collected fed into the second category of hype - hype about tools. People threw around EC2, Hadoop, Pig, and had huge debates about Python versus R.

But the key word in data science is not "data"; it is "science". Data science is only useful when the data are used to answer a question. That is the science part of the equation. The problem with this view of data science is that it is much harder than the view that focuses on data size or tools. It is much, much easier to calculate the size of a data set and say "My data are bigger than yours" or to say, "I can code in Hadoop, can you?" than to say, "I have this really hard question, can I answer it with my data?".

A few reasons it is harder to focus on the science than the data/tools are:

  1. <span style="line-height: 16px;">John Tukey's quote: "The combination of some data and an aching desire for an answer does not ensure that a reasonable answer can be extracted from a given body of data.". You may have 100 Gb and <a href="http://simplystatistics.org/2013/09/23/the-limiting-reagent-for-big-data-is-often-small-well-curated-data/">only 3 Kb are useful</a> for answering the real question you care about. </span>
  2. When you start with the question you often discover that you need to collect new data or design an experiment to confirm you are getting the right answer.
  3. It is easy to discover "structure" or "networks" in a data set. There will always be correlations for a thousand reasons if you collect enough data. Understanding whether these correlations matter for specific, interesting questions is much harder.
  4. Often the structure you found on the first pass is due to a phenomena (measurement error, artifacts, data processing) that doesn't answer an interesting question.

The issue is that the hype around big data/data science will flame out (it already is) if data science is only about "data" and not about "science". The long term impact of data science will be measured by the scientific questions we can answer with the data.
