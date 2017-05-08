---
id: 20
title: On weather forecasts, Nate Silver, and the politicization of statistical illiteracy
date: 2012-10-30T14:00:35+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/34635539704/on-weather-forecasts-nate-silver-and-the
tumblr_simplystatistics_id:
  - 34635539704
dsq_thread_id:
  - 933633807
categories:
  - Uncategorized
tags:
  - five thirty eigh
  - nate silver
  - R
  - simulation
slug: "on-weather-forecasts-nate-silver-and-the"
---
As you know, <a href="http://simplystatistics.org/post/34483703514/sunday-data-statistics-link-roundup-10-28-12" target="_blank">we</a> <a href="http://simplystatistics.org/post/33564003058/sunday-data-statistics-link-roundup-10-14-12" target="_blank">have</a> a <a href="http://simplystatistics.org/post/29407938554/statistics-statisticians-need-better-marketing" target="_blank">thing</a> for <a href="http://simplystatistics.org/post/13684264380/citizen-science-makes-statistical-literacy-critical" target="_blank">statistical literacy</a> here at Simply Stats. So of course this <a href="http://www.politico.com/blogs/media/2012/10/nate-silver-romney-clearly-could-still-win-147618.html" target="_blank">column over at Politico</a> got our attention (via Chris V. and others). The column is an attack on Nate Silver, <a href="http://fivethirtyeight.blogs.nytimes.com/" target="_blank">who has a blog</a> where he tries to predict the outcome of elections in the U.S., you may have heard of it&#8230;

The argument that Dylan Byers makes in the Politico column is that Nate Silver is likely to be embarrassed by the outcome of the election if Romney wins. The reason is that Silver&#8217;s predictions have suggested Obama has a 75% chance to win the election recently and that number has never dropped below 60% or so. 

I don&#8217;t know much about Dylan Byers, but from reading this column and a quick scan of his twitter feed, it appears he doesn&#8217;t know much about statistics. Some people have gotten pretty upset at him on Twitter and elsewhere about this fact, but I&#8217;d like to take a different approach: education. So Dylan, here is a really simple example that explains how Nate Silver comes up with a number like the 75% chance of victory for Obama. 

Let&#8217;s pretend, just to make the example really simple, that if Obama gets greater than 50% of the vote, he will win the election. Obviously, Silver doesn&#8217;t ignore the electoral college and all the other complications, but it makes our example simpler. Then assume that based on averaging a bunch of polls  we estimate that Obama is likely to get about 50.5% of the vote.

Now, we want to know what is the &#8220;percent chance&#8221; Obama will win, taking into account what we know. So let&#8217;s run a bunch of &#8220;simulated elections&#8221; where on average Obama gets 50.5% of the vote, but there is variability because we don&#8217;t have the exact number. Since we have a bunch of polls and we averaged them, we can get an estimate for how variable the 50.5% number is. The usual measure of variance is the <a href="http://en.wikipedia.org/wiki/Standard_deviation" target="_blank">standard deviation</a>. Say we get a standard deviation of 1% for our estimate. That would be a pretty accurate number, but not totally unreasonable given the amount of polling data out there. 

We can run 1,000 simulated elections like this in <a href="http://www.r-project.org/" target="_blank">R</a>* (a free software programming language, if you don&#8217;t know R, may I suggest Roger&#8217;s <a href="https://www.coursera.org/course/compdata" target="_blank">Computing for Data Analysis</a> class?). <a href="https://raw.github.com/gist/3979974/21e3aea5aad79f68c03bbc519c216ed35b2ecd8b/gistfile1.r" target="_blank">Here</a> is the code to do that. The last line of code calculates the percent of times, in our 1,000 simulated elections, that Obama wins. This is the number that Nate would report on his site. When I run the code, I get an Obama win 68% of the time (Obama gets greater than 50% of the vote). But if you run it again that number will vary a little, since we simulated elections. 

The interesting thing is that even though we only estimate that Obama leads by about 0.5%, he wins 68% of the simulated elections. The reason is that we are pretty confident in that number, with our standard deviation being so low (1%). But that doesn&#8217;t mean that Obama will win 68% of the vote in any of the elections! In fact, here is a histogram of the percent of the vote that Obama wins: 

<img height="300" src="http://biostat.jhsph.edu/~jleek/obama.png" width="300" />

He never gets more than 54% or so and never less than 47% or so. So it is always a reasonably close election. Silver&#8217;s calculations are obviously more complicated, but the basic idea of simulating elections is the same. 

Now, this might seem like a goofy way to come up with a &#8220;percent chance&#8221; with simulated elections and all. But it turns out it is actually a pretty important thing to know and relevant to those of us on the East Coast right now. It turns out weather forecasts (and projected hurricane paths) are based on the same <a href="http://en.wikipedia.org/wiki/Numerical_weather_prediction" target="_blank">sort of thing</a> - simulated versions of the weather are run and the &#8220;percent chance of rain&#8221; is the fraction of times it rains in a particular place. 

So Romney may still win and Obama may lose - and Silver may still get a lot of it right. But regardless, the approach taken by Silver is not based on politics, it is based on statistics. Hopefully we can move away from politicizing statistical illiteracy and toward evaluating the models for the real, underlying assumptions they make. 

_* In this case, we could calculate the percent of times Obama would win with a formula (called an analytical calculation) since we have simplified so much. In Nate&#8217;s case it is much more complicated, so you have to simulate. _
