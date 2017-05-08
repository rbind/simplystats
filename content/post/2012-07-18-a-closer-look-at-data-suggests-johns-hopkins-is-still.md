---
id: 141
title: 'A closer look at data suggests Johns Hopkins is still the #1 US hospital'
date: 2012-07-18T17:31:00+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/27491255261/a-closer-look-at-data-suggests-johns-hopkins-is-still
tumblr_simplystatistics_id:
  - 27491255261
dsq_thread_id:
  - 937991037
categories:
  - Uncategorized
tags:
  - Johns Hopkins
  - R
  - Rankings
slug: "a-closer-look-at-data-suggests-johns-hopkins-is-still"
---
The <a href="http://health.usnews.com/health-news/best-hospitals/articles/2012/07/16/best-hospitals-2012-13-the-honor-roll" target="_blank">US News best hospital 2012-2013<strike>2</strike> rankings</a> are out. The big news is that Johns Hopkins has lost its throne. For 21 consecutive years Hopkins was ranked #1, but this year Mass General Hospital (MGH) took the top spot displacing Hopkins to #2. However, <a href="http://www.linkedin.com/pub/elisabet-pujadas/46/320/722" target="_blank">Elisabet Pujadas</a>, an MD-PhD student here at Hopkins, took a close look at the data used for the rankings and made <a href="http://rafalab.jhsph.edu/simplystats/pujadasversion.JPG" target="_blank">this plot</a> (by hand!). The plot shows histograms of the rankings by speciality and shows Hopkins outperforming MGH.

<a href="http://rafalab.jhsph.edu/simplystats/hospitalrankings.png" target="_blank"><img height="263" src="http://rafalab.jhsph.edu/simplystats/hospitalrankings.png" width="525" /></a>

I reproduced Elisabet&#8217;s figure using R (see plot on the left above&#8230; hers is way cooler). A quick look at the histograms shows that Hopkins has many more highly ranked specialities. For example, Hopkins has 5 specialities ranked as #1 while MGH has none. Hopkins has 2 specialities ranked #2 while MGH has none. The median rank for Hopkins is 3 while for MGH it&#8217;s 5. The plot on the right plots ranks, Hopkins&#8217; versus MGH&#8217;s, and shows that Hopkins has a better ranking for 13 out of 16 specialities considered.

So how does MGH get ranked higher than Hopkins? Here U.S. News&#8217; explanation of how they rank: 

> <span>To make the Honor Roll, a hospital had to earn at least one point in each of six specialties. A hospital earned two points if it ranked among the top 10 hospitals in America in any of the 12 specialties in which the US News rankings are driven mostly by objective data, such as survival rates and patient safety. Being ranked in the next 10 in those specialties earned a hospital one point. In the other four specialties, where ranking is based on each hospital&#8217;s reputation among doctors who practice that specialty, the top five hospitals in the country received two Honor Roll points and the next five got one point.</span>

This actually results in a tie of 30 points, but according to the table <a href="http://health.usnews.com/health-news/best-hospitals/articles/2012/07/16/best-hospitals-2012-13-the-honor-roll" target="_blank">here</a>, Hopkins was ranked in 15 specialities to MGH&#8217;s 16. This was the tiebreaker. But, the <a href="http://health.usnews.com/best-hospitals/area/md/johns-hopkins-hospital-6320180" target="_blank">data they put up</a> shows Hopkins ranked in all 16 specialities. Did the specialty ranked 17th do Hopkins in? In any case, a closer look at the data does suggest Hopkins is still #1.

Disclaimer: I am a professor at Johns Hopkins University \___\___\___\___\___\___\___\___\___\___\___\___\___\___\_____

The data for Hopkins is <a href="http://health.usnews.com/best-hospitals/area/md/johns-hopkins-hospital-6320180" target="_blank">here</a> and I cleaned it up and put it <a href="http://rafalab.jhsph.edu/simplystats/hopkins.txt" target="_blank">here</a>. For MGH it&#8217;s <a href="http://health.usnews.com/best-hospitals/area/ma/massachusetts-general-hospital-6140430" target="_blank">here</a> and <a href="http://rafalab.jhsph.edu/simplystats/mgh.txt" target="_blank">here</a>. The script used to make the plots is <a href="http://rafalab.jhsph.edu/simplystats/hospitalrankings.R" target="_blank">here</a>. Thanks to Elisabet for the pointer and data.
