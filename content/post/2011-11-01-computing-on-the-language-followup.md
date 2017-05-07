---
id: 393
title: Computing on the Language Followup
date: 2011-11-01T16:05:05+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/12199191487/computing-on-the-language-followup
tumblr_simplystatistics_id:
  - 12199191487
dsq_thread_id:
  - 1104226164
categories:
  - Uncategorized
tags:
  - R
slug: "computing-on-the-language-followup"
---
My article on <a href="http://simplystatistics.tumblr.com/post/11988685443/computing-on-the-language" target="_blank">computing on the language</a> was unexpectedly popular and so I wanted to quickly follow up on my own solution. Many of you got the answer, and in fact many got solutions that were quite a bit shorter than mine. Here&#8217;s how I did it:

<pre>makeList &lt;- function(...) {
        args &lt;- substitute(list(...))
        nms &lt;- sapply(args[-1], deparse)
        vals &lt;- list(...)
        names(vals) &lt;- nms
        vals
} </pre>

<span>Baptiste</span> pointed out that Frank Harrell has already implemented this function in his Hmisc package as the &#8216;llist&#8217; function (thanks for the pointer!). I&#8217;ll just note that this function does a bit more actually because each element of the returned list is an object of class &#8220;labelled&#8221;.

The shortest solution was probably Tony Breyal&#8217;s version:

<pre>makeList &lt;- function(...) {
        structure(list(...), names = names(data.frame(...)))
}
</pre>

However, it&#8217;s worth noting that this function modifies the object&#8217;s name if the name is non-standard (i.e. if you&#8217;re using backticks like \`r object name\`). That&#8217;s just because the &#8216;data.frame&#8217; function automatically modifies names if they are non-standard.

Thanks to everyone for the responses! I&#8217;ll try to come up with another one soon.
