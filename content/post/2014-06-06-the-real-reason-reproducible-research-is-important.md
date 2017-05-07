---
id: 3127
title: The Real Reason Reproducible Research is Important
date: 2014-06-06T06:19:31+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_655587197830473
al2fb_facebook_link_time:
  - 2014-06-06T10:19:37+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2741183741
categories:
  - Uncategorized
slug: "the-real-reason-reproducible-research-is-important"
---
Reproducible research has been on my mind a bit these days, partly because it has been in the news with the [Piketty stuff](http://simplystatistics.org/2014/06/03/post-piketty-lessons/), and also perhaps because I just [published a book on it](http://www.amazon.com/Implementing-Reproducible-Research-Chapman-Series/dp/1466561599/ref=sr_1_1?ie=UTF8&qid=1402049601&sr=8-1&keywords=roger+peng) and I'm [teaching a class on it](https://www.coursera.org/course/repdata) as we speak (as well as next month and the month after...).

However, as I watch and read many discussions over the role of reproducibility in science, I often feel that many people miss the point. Now, just to be clear, when I use the word "reproducibility" or say that a study is reproducible, I do not mean "independent verification" as in a separate investigator conducted an independent study and came to the same conclusion as the original study (that is what I refer to as "replication"). By using the word reproducible, I mean that the original data (and original computer code) can be analyzed (by an independent investigator) to obtain the same results of the original study. In essence, it is the notion that the _data analysis_ can be successfully repeated_. _Reproducibility is particularly important in large computational studies where the data analysis can often play an outsized role in supporting the ultimate conclusions.

Many people seem to conflate the ideas of reproducible and correctness, but they are not the same thing. One must always remember that **a study can be reproducible and still be wrong**. By "wrong", I mean that the conclusion or claim can be wrong. If I claim that X causes Y (think "sugar causes cancer"), my data analysis might be reproducible, but my claim might ultimately be incorrect for a variety of reasons. If my claim has any value, then others will attempt to replicate it and the correctness of the claim will be determined by whether others come to similar conclusions.

Then why is reproducibility so important? Reproducibility is important because **it is the only thing that an investigator can guarantee about a study**.

Contrary to what most press releases would have you believe, an investigator cannot guarantee that the claims made in a study are correct (unless they are purely descriptive). This is because in the history of science, no meaningful claim has ever been proven by a single study. (The one exception might be mathematics, whether they are literally proving things in their papers.) So reproducibility is important not because it ensures that the results are correct, but rather because it ensures transparency and gives us confidence in understanding exactly what was done.

These days, with the complexity of data analysis and the subtlety of many claims (particularly about complex diseases), reproducibility is pretty much the only thing we can hope for. Time will tell whether we are ultimately right or wrong about any claims, but reproducibility is something we can know right now.
