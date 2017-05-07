---
id: 424
title: 'R Workshop: Reading in Large Data Frames'
date: 2011-10-07T15:54:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/11142408176/r-workshop-reading-in-large-data-frames
tumblr_simplystatistics_id:
  - 11142408176
dsq_thread_id:
  - 936178012
categories:
  - Uncategorized
tags:
  - R
slug: "r-workshop-reading-in-large-data-frames"
---
<span> </span>One question I get a lot about how to read large data frames into R. There are some useful tricks that can save you both time and memory when reading large data frames but I find that many people are not aware of them. Of course, your ability to read data is limited by your available memory. I usually do a rough calculation along the lines of

<span># rows * # columns * 8 bytes / 2^20</span>

This gives you the number of megabytes of the data frame (roughly speaking, it could be less). If this number is more than half the amount of memory on your computer, then you might run into trouble.

<!-- more -->First, read the help page for &#8216;read.table&#8217;. It contains many hints for how to read in large tables. Of course, help pages tend to be a little confusing so I&#8217;ll try to distill the relevant details here.

The following options to &#8216;read.table()&#8217; can affect R&#8217;s ability to read large tables:

**colClasses**

This option takes a vector whose length is equal to the number of columns in year table. Specifying this option instead of using the default can make &#8216;read.table&#8217; run MUCH faster, often twice as fast. In order to use this option, you have to know the of each column in your data frame. If all of the columns are &#8220;numeric&#8221;, for example, then you can just set &#8216;colClasses = &#8220;numeric&#8221;&#8217;. If the columns are all different classes, or perhaps you just don&#8217;t know, then you can have R do some of the work for you.

You can read in just a few rows of the table and then create a vector of classes from just the few rows. For example, if I have a file called &#8220;datatable.txt&#8221;, I can read in the first 100 rows and determine the column classes from that:

<pre>tab5rows &lt;- read.table("datatable.txt", header = TRUE, nrows = 100)
classes &lt;- sapply(tab5rows, class)
tabAll &lt;- read.table("datatable.txt", header = TRUE, colClasses = classes)
</pre>

Always try to use &#8216;colClasses&#8217;, it will make a very big difference. In particular, if one of the column classes is &#8220;character&#8221;, &#8220;integer&#8221;, &#8220;numeric&#8221;, or &#8220;logical&#8221;, then things will be optimal (because those are the basic classes).

**nrows**

Specifying the &#8216;nrows&#8217; argument doesn&#8217;t necessary make things go faster but it can help a lot with memory usage. R doesn&#8217;t know how many rows it&#8217;s going to read in so it first makes a guess, and then when it runs out of room it allocates more memory. The constant allocations can take a lot of time, and if R overestimates the amount of memory it needs, your computer might run out of memory. Of course, you may not know how many rows your table has. The easiest way to find this out is to use the &#8216;wc&#8217; command in Unix. So if you run &#8216;wc datafile.txt&#8217; in Unix, then it will report to you the number of lines in the file (the first number). You can then pass this number to the &#8216;nrows&#8217; argument of &#8216;read.table()&#8217;. If you can&#8217;t use &#8216;wc&#8217; for some reason, but you know that there are definitely less than, say, N rows, then you can specify &#8216;nrows = N&#8217; and things will still be okay. A mild overestimate for &#8216;nrows&#8217; is better than none at all.

**comment.char**

If your file has no comments in it (e.g. lines starting with &#8216;#&#8217;), then setting &#8216;comment.char = &#8220;&#8221;&#8217; will sometimes make &#8216;read.table()&#8217; run faster. In my experience, the difference is not dramatic.
