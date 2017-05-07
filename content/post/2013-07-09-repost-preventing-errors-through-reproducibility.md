---
id: 1477
title: 'Repost: Preventing Errors Through Reproducibility'
date: 2013-07-09T10:00:39+00:00
author: Roger Peng
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_514951141894080
al2fb_facebook_link_time:
  - 2013-07-09T14:06:03+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1481477063
categories:
  - Uncategorized
slug: "repost-preventing-errors-through-reproducibility"
---
Checklist mania has hit clinical medicine thanks to people like Peter Pronovost and many others. The basic idea is that simple and short checklists along with changes to clinical culture can prevent major errors from occurring in medical practice. One particular success story is Pronovost’s central line checklist which <a href="http://www.ncbi.nlm.nih.gov/pubmed/15483409" target="_blank">dramatically reduced bloodstream infections</a> in hospital intensive care units.

There are three important points about the checklist. First, it neatly summarizes information, bringing the latest evidence directly to clinical practice. It is easy to follow because it is short. Second, it serves to slow you down from whatever you’re doing. Before you cut someone open for surgery, you stop for a second and run the checklist. Third, it is a kind of equalizer that subtly changes the culture: everyone has to follow the checklist, no exceptions. A number of studies have now shown that when clinical units follow checklists, infection rates go down and hospital stays are shorter compared to units using standard procedures.

Here’s a question: What would it take to convince you that an article’s results were reproducible, short of going in and reproducing the results yourself? I recently raised this question in a <a href="http://simplystatistics.tumblr.com/post/12243614318/i-gave-a-talk-on-reproducible-research-back-in" target="_blank">talk I gave</a> at the Applied Mathematics Perspectives conference. At the time I didn’t get any responses, but I’ve had some time to think about it since then.

I think most people are thinking of this issue along the lines of “The only way I can confirm that an analysis is reproducible is to reproduce it myself”. In order for that to work, everyone needs to have the data and code available to them so that they can do their own independent reproduction. Such a scenario would be sufficient (and perhaps ideal) to claim reproducibility, but is it strictly necessary? For example, if I reproduced a published analysis, would that satisfy you that the work was reproducible, or would you have to independently reproduce the results for yourself? If you had to choose someone to reproduce an analysis for you (not including yourself), who would it be?

This idea is embedded in the <a href="http://www.ncbi.nlm.nih.gov/pubmed/19535325" target="_blank">reproducible research policy at </a>_<a href="http://www.ncbi.nlm.nih.gov/pubmed/19535325" target="_blank">Biostatistics</a>, _but of course we make the data and code available too. There, a (hopefully) trusted third party (the Associate Editor for Reproducibility) reproduces the analysis and confirms that the code was runnable (at least at that moment in time).

It’s important to point out that reproducible research is not only about correctness and prevention of errors. It’s also about making research results available to others so that they may more easily build on the work. However, preventing errors is an important part and the question is then what is the best way to do that? Can we generate a reproducibility checklist?
