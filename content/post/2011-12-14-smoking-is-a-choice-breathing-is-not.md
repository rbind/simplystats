---
id: 344
title: Smoking is a choice, breathing is not.
date: 2011-12-14T13:58:52+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/14214147778/smoking-is-a-choice-breathing-is-not
tumblr_simplystatistics_id:
  - 14214147778
dsq_thread_id:
  - 934594142
categories:
  - Uncategorized
tags:
  - Beijing
  - china
  - pollution
  - smoking
slug: "smoking-is-a-choice-breathing-is-not"
---
Over the last week or so I&#8217;ve been posting about the air pollution levels in Beijing, China. The twitter feed from the US Embassy there makes it easy to track the hourly levels of fine particulate matter (PM2.5) and you can use <a href="http://www.biostat.jhsph.edu/~rpeng/makeBeijingAirGraph.R" target="_blank">this R code</a> to make a graph of the data.

One problem with talking about particulate matter levels is that the units are a bit abstract. We usually talk in terms of micrograms per cubic meter (mcg/m^3), which is a certain mass of particles per volume of air. The 24-hour national ambient air quality standard for fine PM in the US is 35 mcg/m^3. But what does that mean in reality?

C. Arden Pope III and colleagues recently wrote an interesting paper in _Environmental Health Perspectives_ on the <a href="http://www.ncbi.nlm.nih.gov/pubmed/21768054" target="_blank">dose-response relationship between particles and lung cancer and cardiovascular disease</a>. They combined data from air pollution studies and smoking studies to estimate the dose-response curve for a very large range of PM levels. Ambient air pollution, not surprisingly, is on the low-end of PM exposure, followed by second hand smoke, followed by active smoking. One challenge they faced is putting everything on the same scale in terms of PM exposure so that the different studies could be compared.

Here are the important details: On average, actively smoking a cigarette generates a dose of about 12 milligrams (mg) of particulate matter. Daily inhalation rates obviously depend on your size, age, physical activity, health, and other factors, but in adults they range from about 13 to 23 cubic meters of air per day. For convenience, I&#8217;ll just take the midpoint of that range, which is 18 cubic meters per day.

If your city&#8217;s fine PM levels were compliant with the US national standard of 35 mcg/m^3, then in the worst case scenario you&#8217;d be breathing in about 630 micrograms of particles per day, which is about 0.05 cigarettes (1 cigarette every 20 days). Sounds like it&#8217;s not too bad, but keep in mind that most of the increase in risk from smoking is seen in the low range of the dose-response curve (although this is obviously very low).

If we move now to Beijing, where 24-hour average levels can easily reach up to 300 mcg/m^3 (and <a href="http://www.npr.org/2011/12/07/143214875/clean-air-a-luxury-in-beijings-pollution-zone" target="_blank">indoor levels can reach 200 mcg/m^3</a>), then we&#8217;re talking about a daily dose of almost half a cigarette. Now, half a cigarette might still seem like not that much, but keep in mind that _pretty much everyone is exposed_: old and young, sick and healthy_._ Not everyone gets the same dose because of variation in inhalation rates, but even the low end of the range gives you about 0.3 cigarettes. 

Beijing is hardly alone here, as a number of studies in Asian cities show comparable levels of fine PM. I&#8217;ve redone my previous plot of PM2.5 in Beijing in terms of number cigarettes per day. Here&#8217;s the last 2 months in Beijing (for an average adult).

![](http://media.tumblr.com/tumblr_lw59ogIhq81r08wvg.png)
