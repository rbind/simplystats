---
id: 3123
title: Post-Piketty Lessons
date: 2014-06-03T07:04:14+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_654352777953915
al2fb_facebook_link_time:
  - 2014-06-03T11:04:20+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2732704802
categories:
  - Uncategorized
slug: "post-piketty-lessons"
---
The latest crisis in data analysis comes to us (once again) from the field of Economics. Thomas Piketty, a French economist recently published a book titled _Capital in the 21st Century_ that has been a best-seller. I have not read the book, but based on media reports, it appears to make the claim that inequality has increased in recent years and will likely increase into the future. The book argues that this increase in inequality is driven by capitalism’s tendency to reward capital more than labor. This is my non-economist’s understanding of the book, but the details specific claims of the book are not what I want to discuss here (there is much discussion elsewhere).

An interesting aspect of Piketty’s work, from my perspective, is that [he has made all of his data and analysis available on the web](http://piketty.pse.ens.fr/en/capital21c2). From what I can tell, his analysis was not trivial—data were collected and merged from multiple disparate sources and adjustments were made to different data series to account for various incompatibilities. To me, this sounds like a standard data analysis, in the sense that all meaningful data analyses are complicated. As noted by Nate Silver, data do not arise from a “[virgin birth](http://fivethirtyeight.com/features/be-skeptical-of-both-piketty-and-his-skeptics/)”, and in any example worth discussing, much work has to be done to get the data into a state in which statistical models can be fit, or even more simply, plots can be made.

Chris Giles, a journalist for the Financial Times, recently published a column (unfortunately blocked by paywall) in which he claimed that much of the analysis that Piketty had done was flawed or incorrect. In particular, he claimed that based on his (Giles’) analysis, inequality was not growing as much over time as Piketty claimed. Among other points, Giles claims that numerous errors were made in assembling the data and in Piketty’s original analysis.

This episode smacked of the recent [Reinhart-Rogoff kerfuffle](http://simplystatistics.org/2013/04/16/i-wish-economists-made-better-plots/) in which some fairly basic errors were discovered in those economists' Excel spreadsheets. Some of those errors only made small differences to the results, but a critical methodological component, in which the data were weighted in a special way, appeared to have a significant impact on the results if alternate approaches were taken.

Piketty has since [responded forcefully](http://www.nytimes.com/2014/05/30/upshot/thomas-piketty-responds-to-criticism-of-his-data.html?_r=0) to the FT's column, defending all of the work he has done and addressing the criticisms one by one. To me, the most important result of the FT analysis is that _Piketty’s work appears to be largely reproducible_. Piketty made his data available, with reasonable documentation (in addition to his book), and Giles was able to come up with the same numbers Piketty came up with. This is a _good thing_. Piketty’s work was complex, and the only way to communicate the entirety of it was to make the data and code available.

The other aspects of Giles’ analysis are, from an academic standpoint, largely irrelevant to me, particularly because I am not an economist. The reason I find them irrelevant is because the objections are largely over _whether he is correct or not_. This is an obviously important question, but in any field, no single study or even synthesis can be determined to be "correct" at that instance. Time will tell, and if his work is "correct", his predictions will be borne out by nature. It's not so satisfying to have to wait many years to know if you are correct, but that's how science works.

In the meantime, economists will have a debate over the science and the appropriate methods and data used for analysis. This is also how science works, and it is only (really) possible because Piketty made his work reproducible. Otherwise, the debate would be largely uninformed.
