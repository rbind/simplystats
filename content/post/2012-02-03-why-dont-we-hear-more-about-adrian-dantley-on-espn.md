---
id: 303
title: "Why don't we hear more about Adrian Dantley on ESPN? This graph makes me think he was as good an offensive player as Michael Jordan."
date: 2012-02-03T14:02:00+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/16974142373/why-dont-we-hear-more-about-adrian-dantley-on-espn
tumblr_simplystatistics_id:
  - 16974142373
dsq_thread_id:
  - 978066398
categories:
  - Uncategorized
tags:
  - Basketball
  - R
slug: "why-dont-we-hear-more-about-adrian-dantley-on-espn"
---
In <a href="http://simplystatistics.tumblr.com/post/16817771482/this-graph-makes-me-think-kobe-is-not-that-good-he" target="_blank">my last post</a> I complained about efficiency not being discussed enough by NBA announcers and commentators. I pointed out that some of the best scorers have relatively low FG% or <a href="http://www.ehow.com/how_2092829_calculate-true-shooting-percentage-basketball.html" target="_blank">TS%</a>. However, via the comments it was pointed out that top scorers need to take more difficult shots and thus are expected to have lower efficiency. The plot below (made with this <a href="http://rafalab.jhsph.edu/simplystats/nba.R" target="_blank">R script</a>) seems to confirm this (click image to enlarge) . The dashed line is from regression and the colors represent guards (green), forwards (orange) and centers (purple).

<a href="http://rafalab.jhsph.edu/simplystats/kobe3.png" target="_blank"><img height="358" src="http://rafalab.jhsph.edu/simplystats/kobe3.png" width="500" /></a>

Among this group TS% does trend down with points per game and centers tend to have higher TS%. Forwards and guards are not very different. However, the plot confirms that some of the supposed all time greats are more ball hogs than good scorers. 

A couple of  further observations. First, Adrian Dantley was way better than I thought. Why isn&#8217;t he more famous? Second, Kobe is no Jordan. Also note Jordan played several seasons past his prime which lowered his career averages. So I added points for five of these players using only data from their prime years (ages 24-29). Here Jordan really stands out. But so does Dantley! 

<a href="http://rafalab.jhsph.edu/simplystats/kobe4.png" target="_blank"><img height="358" src="http://rafalab.jhsph.edu/simplystats/kobe4.png" width="500" /></a>

pd - Note that these plots say nothing about defense, rebounding, or passing. This <a href="http://skepticalsports.com/?page_id=1222" target="_blank">in-depth analysis</a> makes a convincing argument that Dennis Rodman is one of the most valuable players of all time.
