---
id: 962
title: Data supports claim that if Kobe stops ball hogging the Lakers will win more
date: 2013-01-28T11:33:26+00:00
author: Rafael Irizarry
al2fb_facebook_nointegrate:
  - 1
al2fb_facebook_link_id:
  - 136171103105421_452496141472914
al2fb_facebook_link_time:
  - 2013-01-28T16:33:29+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/01/kobelakers-300x300.png
dsq_thread_id:
  - 1051486634
categories:
  - Uncategorized
tags:
  - Basketball
  - fun
slug: "data-supports-claim-that-if-kobe-stops-ball-hogging-the-lakers-will-win-more"
---
The Lakers recently snapped a four game losing streak. In that game Kobe, the league leader in field goal attempts and missed shots, had a season low of 14 points but a season high of 14 assists. This makes sense to me since Kobe shooting less means more efficient players are shooting more. Kobe has a lower career <a style="font-size: 16px;" href="http://www.basketball-reference.com/leaders/ts_pct_active.html">true shooting %</a> than Gasol, Howard and Nash (ranked 17,3 and 2 respectively). Despite this he takes more than 1/4 of the shots. Commentators usually praise top scorers no matter what, but recently they [The Lakers recently snapped a four game losing streak. In that game Kobe, the league leader in field goal attempts and missed shots, had a season low of 14 points but a season high of 14 assists. This makes sense to me since Kobe shooting less means more efficient players are shooting more. Kobe has a lower career <a style="font-size: 16px;" href="http://www.basketball-reference.com/leaders/ts_pct_active.html">true shooting %</a> than Gasol, Howard and Nash (ranked 17,3 and 2 respectively). Despite this he takes more than 1/4 of the shots. Commentators usually praise top scorers no matter what, but recently they](http://espn.go.com/los-angeles/nba/story/_/id/8884925/los-angeles-lakers-coach-mike-dantoni-says-kobe-bryant-assists-looked-sacrificing) and noticed that the Lakers are 6-22 when Kobe has more than 19 field goal attempts and 12-3 in the rest of the games.

<a href="http://simplystatistics.org/2013/01/28/data-supports-claim-that-if-kobe-stops-ball-hogging-the-lakers-will-win-more/kobelakers-2/" rel="attachment wp-att-978"><img class="alignnone size-medium wp-image-978" alt="kobelakers" src="http://simplystatistics.org/wp-content/uploads/2013/01/kobelakers1-300x300.png" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2013/01/kobelakers1-150x150.png 150w, http://simplystatistics.org/wp-content/uploads/2013/01/kobelakers1-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2013/01/kobelakers1-1024x1024.png 1024w" sizes="(max-width: 300px) 100vw, 300px" /></a>

This graph shows score differential versus % of shots taken by Kobe* . Linear regression suggests that an increase of 1% in % of shots taken by Kobe results in a drop of 1.16 points (+/- 0.22)  in score differential. It also suggests that when Kobe takes 15% of the shots, the Lakers win by an average of about 10 points, when he takes 30% (not a rare occurrence) they lose by an average of about 5. Of course we should not take this regression analysis to seriously but it's hard to ignore the fact that when Kobe takes less than <del>23</del> 23.25% of the shots the Lakers are 13-1.

I suspect that this relationship is not unique to Kobe and the Lakers. In general, teams with  a more balanced attack probably do better. Testing this could be a good project for [Jeff's class](https://www.coursera.org/course/dataanalysis).

* I approximated shots taken as field goal attempts + floor(0.5 x Free Throw Attempts).

Data is [here](http://rafalab.jhsph.edu/simplystats/kobe2.txt).

**Update**: Commentator Sidney fixed some entires in the  data file. Data and plot updated.
