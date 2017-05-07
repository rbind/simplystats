---
id: 127
title: Really Big Objects Coming to R
date: 2012-07-25T13:56:55+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/27980822670/really-big-objects-coming-to-r
tumblr_simplystatistics_id:
  - 27980822670
dsq_thread_id:
  - 937235391
categories:
  - Uncategorized
tags:
  - R
slug: "really-big-objects-coming-to-r"
---
I noticed in the development version of R the following note in the NEWS file:

> There is a subtle change in behaviour for numeric index values 2^31 and larger.  These used never to be legitimate and so were treated as NA, sometimes with a warning.  They are now legal for long vectors so there is no longer a warning, and x[2^31] <- y will now extend the vector on a 64-bit platform and give an error on a 32-bit one.

This is significant news indeed!

Some background: In the old days, when most us worked on 32-bit machines, objects in R were limited to be about 4GB in size (and practically a lot less) because memory addresses were indexed using 32 bit numbers. When 64-bit machines became more common in the early 2000s, that limit was removed. Objects could theoretically take up more memory because of the dramatically larger address space. For the most part, this turned out to be true, although there were some growing pains as R was transitioned to be runnable on 64-bit systems (I remember many of those pains).

However, even with the 64-bit systems, there was a key limitation, which is that vectors, one of the fundamental objects in R, could only have a maximum of 2^31-1 elements, or roughly 2.1 billion elements. This was because array indices in R were stored internally as signed integers (specifically as &#8216;R\_len\_t&#8217;), which are 32 bits on most modern systems (take a look at .Machine$integer.max in R).

You might think that 2.1 billion elements is a lot, and for a single vector it still is. But you have to consider the fact that internally R stores all arrays, no matter how many dimensions there are, as just long vectors. So that would limit you, for example, to a square a matrix that was no bigger than roughly 46,000 by 46,000. That might have seemed like a large matrix back in 2000 but it seems downright quaint now. And if you had a 3-way array, the limit gets even smaller. 

Now it appears that change is a comin&#8217;. The details can be found in the R source starting at revision 59005 if you follow on subversion. 

A new type called &#8216;R\_xlen\_t&#8217; has been introduced with a maximum value of 4,503,599,627,370,496, which is 2^52. As they say where I grew up, that&#8217;s a lot of McNuggets. So if your computer has enough physical memory, you will soon be able to index vectors (and matrices) that are significantly longer than before.
