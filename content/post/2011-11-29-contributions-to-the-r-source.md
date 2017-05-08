---
id: 363
title: Contributions to the R source
date: 2011-11-29T14:10:03+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/13499734759/contributions-to-the-r-source
tumblr_simplystatistics_id:
  - 13499734759
dsq_thread_id:
  - 933699088
categories:
  - Uncategorized
tags:
  - R
slug: "contributions-to-the-r-source"
---
One of the nice things about tracking the R subversion repository using git instead of subversion is you can do

<pre>git shortlog -s -n</pre>

which gives you

<pre>19855  ripley
  6302  maechler
  5299  hornik
  2263  pd
  1153  murdoch
   813  iacus
   716  luke
   661  jmc
   614  leisch
   472  ihaka
   403  murrell
   286  urbaneks
   284  rgentlem
   269  apache
   253  bates
   249  tlumley
   164  duncan
    92  r
    43  root
    40  paul
    40  falcon
    39  lyndon
    34  thomas
    33  deepayan
    26  martyn
    18  plummer
    15  (no author)
    14  guido
     3  ligges
     1  mike
</pre>

These data are since 1997 so for Brian Ripley, that&#8217;s 3.6 commits per day for the last 15 years. 

I think that number 1 position will be out of reach for a while. 

By the way, I highly recommend to anyone tracking subversion repositories that they use <a href="http://git-scm.com" target="_blank">git</a> to do it. You get all of the advantages of git and there are essentially no downsides.
