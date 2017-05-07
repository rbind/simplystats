---
id: 396
title: Computing on the Language
date: 2011-10-27T12:17:24+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/11988685443/computing-on-the-language
tumblr_simplystatistics_id:
  - 11988685443
dsq_thread_id:
  - 933692814
categories:
  - Uncategorized
tags:
  - R
slug: "computing-on-the-language"
---
And now for something a bit more esoteric&#8230;.

I recently wrote a function to deal with a strange problem. Writing the function ended up being a fun challenge related to computing on the R language itself.

Here&#8217;s the problem: Write a function that takes any number of R objects as arguments and returns a list whose names are derived from the names of the R objects.

<!-- more -->Perhaps an example provides a better description. Suppose the function is called &#8216;makeList&#8217;. Then 

<pre>x &lt;- 1<br />y &lt;- 2<br />z &lt;- "hello"<br />makeList(x, y, z)
</pre>

returns

<pre>list(x = 1, y = 2, z = "hello")
</pre>

It originally seemed straightforward to me, but it turned out to be very much not straightforward. 

Note that a function like this is probably most useful during interactive sessions, as opposed to programming.

I challenge you to take a whirl at writing the function, you know, in all that spare time you have. I&#8217;ll provide my solution in a future post.
