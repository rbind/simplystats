---
id: 2034
title: 'The @fivethirtyeight effect - watching @walthickey gain Twitter followers in real time'
date: 2013-10-17T10:16:31+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_556776391044888
al2fb_facebook_link_time:
  - 2013-10-17T14:16:37+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-followers.png
dsq_thread_id:
  - 1867962305
categories:
  - Uncategorized
slug: "the-fivethirtyeight-effect-watching-walthickey-gain-twitter-followers-in-real-time"
---
Last night Nate Silver announced that he had hired Walt Hickey away from Business Insider to be an editor for the new http://www.fivethirtyeight.com/ website with a couple of tweets:

<blockquote class="twitter-tweet" width="550">
  <p>
    Super excited to announce that 538 is hiring <a href="https://twitter.com/WaltHickey">@WaltHickey</a>, the talented young writer/journalist/data geek from Business Insider.
  </p>
  
  <p>
    &mdash; Nate Silver (@NateSilver538) <a href="https://twitter.com/NateSilver538/status/390608474763063296">October 16, 2013</a>
  </p>
</blockquote>



<blockquote class="twitter-tweet" width="550">
  <p>
    .<a href="https://twitter.com/WaltHickey">@WaltHickey</a> will have a similarly broad range for 538, bringing a data-driven view toward all types of things. Give him a follow!
  </p>
  
  <p>
    &mdash; Nate Silver (@NateSilver538) <a href="https://twitter.com/NateSilver538/status/390608971280551936">October 16, 2013</a>
  </p>
</blockquote>



I knew about Walt because he [syndicated one of my posts](http://www.businessinsider.com/fox-news-charts-tricks-data-2012-11) about Fox News Graphics on Business Insider. But he clearly wasn't as well known as Nate S. who is probably the face of statistical analysis to most people in the world. So I figured the announcement might increase Walt's following on Twitter.

After goofing around a bit with the [Twitter api](https://dev.twitter.com/) and the [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html) R package. I managed to start sampling the number of followers for Walt H. This started about an hour or so (I think) after the announcement was made, here is a plot of Walt's followers over about two hours.

<a href="http://simplystatistics.org/2013/10/17/the-fivethirtyeight-effect-watching-walthickey-gain-twitter-followers-in-real-time/walthickey-followers-3/" rel="attachment wp-att-2048"><img class="alignnone size-full wp-image-2048" alt="walthickey-followers" src="http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-followers.png" width="400" height="400" srcset="http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-followers-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-followers-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-followers.png 400w" sizes="(max-width: 400px) 100vw, 400px" /></a>

Over the two hours he gained almost 1,000 followers! We can also take a look at the rate he was gaining followers.

<a href="http://simplystatistics.org/2013/10/17/the-fivethirtyeight-effect-watching-walthickey-gain-twitter-followers-in-real-time/walthickey-rate/" rel="attachment wp-att-2049"><img class="alignnone size-full wp-image-2049" alt="walthickey-rate" src="http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-rate.png" width="400" height="400" srcset="http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-rate-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-rate-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2013/10/walthickey-rate.png 400w" sizes="(max-width: 400px) 100vw, 400px" /></a>n

So he was gaining followers at around 10-15 per minute on average at 7:30 yesterday. It cooled off over those two hours, but he was still getting a few followers a minute. To put those numbers in perspective, our Twitter account @simplystats, gets on average about 10 new followers _a day_.

So there you have it, the real time (albeit two hours too late) 538 bump in Twitter followers.
