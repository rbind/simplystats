---
title: The Law and Order of Data Science
author: Roger Peng
date: '2018-08-15'
slug: the-law-and-order-of-data-science
---


One conversation I’ve had a few times revolves around the question, “What’s the difference between science and data science?” If I were to come up with a simple distinction, I might say that 

> Science starts with a question; data science starts with the data. 

What makes data science so difficult is that it starts in the *wrong place*. As a result, a certain amount of extra work must be done to understand the context surrounding a dataset before we can do anything useful.


## Procedure for procedurals

One of my favorite shows growing up was *Law & Order*, one of the longest running "procedural" shows that also produced a number of spinoffs. I remember coming home from school in the afternoon, flipping on TNT and watching whatever *Law & Order* marathon was currently being aired (there was always something). 

One distinct feature of the show is that pretty much every episode followed the exact same format:

1. The episode starts with the discovery that a crime has occurred, usually a murder.
2. The first half of the episode involves the police retracing history trying to figure out who committed the crime (the “Order” part). 
3. The police catch a suspect at exactly 22 minutes into the episode.
4. In the second half of the episode, the district attorneys take over and prosecute the suspect in court (the "Law" part). Usually, they win.

The format of the show is in fact highly unusual. While it starts off with a mystery (who committed this murder?) as many shows do, the mystery is solved half way through the episode! I can imagine some TV executive 30 years ago wondering, "What the heck are you going to do for the rest of the episode if you solve the mystery half way through?"

What made the show interesting to me was that in the second half of every episode, the lawyers for the government had to convince a jury that they had the right suspect. They had to present evidence and make an argument that this person was guilty. Of course, because this is TV, they usually won the argument, but I think many TV shows would have been satisfied with just catching the criminal. In most shows, presenting the data and the evidence to an audience is not interesting, but on *Law & Order*, it was.

## The Law & Order metaphor

Many data science projects essentially follow this format, because we start with the data. Data are available. We often don’t get to participate in its generation. Perhaps the data were collected as part of some administrative records system, or as part of some logging system, or as part of some other project addressing a different question. The initial challenge of any data science project is figuring out the *context* around the data and *question* that motivated its origination. A key milestone is then figuring out how exactly the data came to be (i.e. who committed this “crime”?). 

Once we’ve figured out the context around the data, essentially retracing the history of the data, we can then ask “Are these data appropriate for the question that **I want to ask**?” Answering this question involves comparing the context surrounding the original data and then ensuring that it is [compatible with the context for your question](https://simplystatistics.org/2018/05/24/context-compatibility-in-data-analysis/). If there is compatibility, or we can *create* compatibility via statistical modeling or assumptions, then we can intelligently move forward to analyze the data and generate evidence concerning a different question. We will then have to make a separate argument to some audience regarding the evidence in the data and any conclusions we may make. Even though the data may have been convincing for one question, it doesn’t mean that the data will be convincing for a different question.

Data science often starts with the data, but in an ideal world it wouldn’t. In an ideal world, we would ask questions and carefully design experiments to collect data specific to those questions. But this is simply not practical and data need to be shared across contexts. The difficulty of the data scientist’s job is understanding each dataset’s context, making sure it is compatible with the *current* question, developing the evidence from the data, and then getting an audience to [accept the results](https://simplystatistics.org/2018/04/17/what-is-a-successful-data-analysis/).
