---
id: 32
title: Comparing Hospitals
date: 2012-10-17T13:05:38+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/33772001130/there-was-a-story-a-few-weeks-ago-on-npr-about-how
tumblr_simplystatistics_id:
  - 33772001130
dsq_thread_id:
  - 939883791
categories:
  - Uncategorized
slug: "there-was-a-story-a-few-weeks-ago-on-npr-about-how"
---
There was a story a few weeks ago on NPR about how <a href="http://www.npr.org/templates/story/story.php?storyId=162035632" target="_blank">Medicare will begin fining hospitals</a> that have 30-day readmission rates that are too high. This process was introduced in the Affordable Care Act and

> <span>Under the health care law, the penalties gradually will rise until 3 percent of Medicare payments to hospitals are at risk. Medicare is considering holding hospitals accountable on four more measures: joint replacements, stenting, heart bypass and treatment of stroke.</span>

Those of you taking my <a href="https://class.coursera.org/compdata-2012-001/class/index" target="_blank">computing course on Coursera</a> have already seen some of the data used to for this assessment, which can be obtained at the <a href="http://hospitalcompare.hhs.gov" target="_blank">hospital compare web site</a>. It’s also worth noting that underlying the analysis for this was a detailed and thoughtful report published by the Committee of Presidents of Statistical Societies (COPSS) which was chaired by <a href="http://www.biostat.jhsph.edu/~tlouis/" target="_blank">Tom Louis</a>, a Professor here at Johns Hopkins.

The report, titled <a href="http://www.cms.gov/Medicare/Quality-Initiatives-Patient-Assessment-Instruments/HospitalQualityInits/Downloads/Statistical-Issues-in-Assessing-Hospital-Performance.pdf" target="_blank">“Statistical Issues in Assessing Hospital Performance”</a> covers much of the current methodology and its criticisms and has a number of recommendations. Of particular concern for hospitals is the issue of shrinkage targets—in an hierarchical model the estimate of the readmission rate for a hospital is shrunken towards the mean. But which mean? Hospitals with higher risk or sicker patient populations will look quite a bit worse than hospitals sitting amongst a healthy population if they are both compared to the same mean.

The report is worth reading even if you’re just interested in the practical application of hierarchical models. And the web site is fun to explore if you want to know how the hospitals around you are fairing.
