---
id: 301
title: An R script for estimating future inflation via the Treasury market
date: 2012-02-06T13:34:04+00:00
author: Admin
tumblr_simplystatistics_id:
  - 17152281502
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/17152281502/an-r-script-for-estimating-future-inflation-via-the
dsq_thread_id:
  - 951578087
categories:
  - Uncategorized
tags:
  - finance
  - R
slug: "an-r-script-for-estimating-future-inflation-via-the"
---
One factor that is critical for any financial planning is estimating what future inflation will be. For example, if you&#8217;re saving money in an instrument that gains 3% per year, and inflation is estimated to be 4% per year, well then you&#8217;re losing money in real terms.

There are a variety of ways to estimate the rate of future inflation. You could, for example, use past rates as an estimate of future rates. However, the Treasury market provides an estimate of what the market thinks annual inflation will be over the next 5, 10, 20, and 30 years.

Basically, the Treasury issue two types of securities: nominal securities that pay a nominal interest rate (fixed percentage of your principal), and inflation-indexed securities (TIPS) that pay an interest rate that is applied to your principal adjusted by the consumer price index (CPI). As the CPI goes up and down, the payments for inflation-indexed securities go up and down (although they can&#8217;t go negative so you always get your principal back). As these securities trade throughout the day, their respective market-based interest rates go up and down continuously. The difference between the nominal interest rate and the real interest rate for a fixed period of time (5, 10, 20, years)  can be used as a rough estimate of annual inflation over that time period.

The Treasury publishes data for its auctions everyday on the yield for both nominal and inflation-indexed securities. There is an XML feed for <a href="http://www.treasury.gov/resource-center/data-chart-center/interest-rates/Datasets/yield.xml" target="_blank">nominal yields</a> and for <a href="http://www.treasury.gov/resource-center/data-chart-center/interest-rates/Datasets/real_yield.xml" target="_blank">real yields</a>. Using these, I used the XML R package and wrote an <a href="http://www.biostat.jhsph.edu/~rpeng/inflation.R" target="_blank">R script to scrape the data and calculate the inflation estimate</a>.  

As of today, the market&#8217;s estimate of annual inflation is:

<pre>5-year Inflation: 1.88%
10-year Inflation: 2.18%
30-year Inflation: 2.38%
</pre>

Basically, you just call the &#8216;inflation()&#8217; function with no arguments and it produces the above print out.
