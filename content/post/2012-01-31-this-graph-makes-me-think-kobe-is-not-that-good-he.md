---
id: 306
title: This graph makes me think Kobe is not that good, he just shoots a lot
date: 2012-01-31T14:02:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/16817771482/this-graph-makes-me-think-kobe-is-not-that-good-he
tumblr_simplystatistics_id:
  - 16817771482
dsq_thread_id:
  - 934304083
categories:
  - Uncategorized
tags:
  - Basketball
  - R
slug: "this-graph-makes-me-think-kobe-is-not-that-good-he"
---
I find it surprising that NBA commentators rarely talk about field goal percentage. Everybody knows that the more you shoot the more you score. But players that score a lot are admired without consideration of their FG%. Of course having a high FG% is not necessarily admirable as many players only take easy shots, while top-scorers need to take difficult ones. Regardless, missing is undesirable and players that miss more than usual are not criticized enough. Iverson, for example, had a lowly career FG% of 43 yet he regularly made the allstar team. But I am not surprised he never won an NBA championship: it&#8217;s hard to win when your top scorer misses so often.

<img height="450" src="http://rafalab.jhsph.edu/simplystats/kobe.png" width="450" />

Experts consider Kobe to be one of the all time greats and compare him to Jordan. They never mention that he is consistently among league leaders in missed shots. So far this year, Kobe has missed a whopping 279 times for a league leading 13.3 misses per game. In contrast, Lebron has missed 8.8 per game and has scored about the same per game. The plot above (made with this <a href="http://rafalab.jhsph.edu/simplystats/nba.R" target="_blank">R script</a>) shows career FG% for players considered to be superstars, top-scorers, and that have won multiple championships (red lines are 1st and 3rd quartiles). I also include Gasol, Lebron, Wade, and Dominique. Note that Kobe has the worst FG% in this group.  So how does he win 5 championships? Well perhaps Shaq and later Gasol made up for his misses. Note that the first year Kobe played without Shaq, the Lakers did not make the playoffs. Also, during Kobe&#8217;s career the Lakers&#8217; record has been <a href="http://slumz.boxden.com/f16/lakers-cavs-records-without-kobe-lebron-1370997/" target="_blank">similar with and without him</a>. Experts may compare Kobe to Jordan, but perhaps we should be comparing him to Dominique.

**Update: **Please see <span>Brunsloe87&#8217;s comment for a much better analysis than mine. He/she points out that it&#8217;s too simplistic to look at FG%. Instead we should look at something closer to points scored per shot taken. This rewards players, like Kobe, that draw many fouls and has a high FT%. There is a weighted statistic called true scoring % (TS%) that tries to summarize this and below I include a plot of TS% for the same players. Kobe is no Jordan but he is not as bad as Dominique either. He is somewhere in the middle. </span>

<span><img height="500" src="http://rafalab.jhsph.edu/simplystats/kobe2.png" width="500" /></span>

The comment also points out that Magic didn&#8217;t shoot as much as other superstars so it&#8217;s unfair to include him. A better plot would plot TS% versus shots taken (e.g. FGA+FTA/2) but I&#8217;ll let someone with more time make that one. Anyways, this plot explains why the early 80s Lakers (Magic+Kareem) were so good.
