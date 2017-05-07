---
id: 1316
title: A Shiny web app to find out how much medical procedures cost in your state.
date: 2013-05-08T17:09:08+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_491653760890485
al2fb_facebook_link_time:
  - 2013-05-08T21:09:14+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.57.56-PM.png
dsq_thread_id:
  - 1273304331
categories:
  - Uncategorized
tags:
  - CMS
  - Huffingtonpost
  - R
  - Rstudio
  - shiny
slug: "a-shiny-web-app-to-find-out-how-much-medical-procedures-cost-in-your-state"
---
Today the [front page of the Huffington Post featured](http://www.huffingtonpost.com/2013/05/08/hospital-prices-cost-differences_n_3232678.html) the [Today the [front page of the Huffington Post featured](http://www.huffingtonpost.com/2013/05/08/hospital-prices-cost-differences_n_3232678.html) the](https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/index.html) that shows the cost of many popular procedures broken down by hospital. We here at Simply Statistics think you should be able to explore these data more easily. So we asked [Today the [front page of the Huffington Post featured](http://www.huffingtonpost.com/2013/05/08/hospital-prices-cost-differences_n_3232678.html) the [Today the [front page of the Huffington Post featured](http://www.huffingtonpost.com/2013/05/08/hospital-prices-cost-differences_n_3232678.html) the](https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/index.html) that shows the cost of many popular procedures broken down by hospital. We here at Simply Statistics think you should be able to explore these data more easily. So we asked](http://biostat.jhsph.edu/~jmuschel/) to help us build a Shiny App that allows you to interact with these data. You can choose your state and your procedure and see how much the procedure costs at hospitals in your state. It takes a second to load because it is a lot of data....

[Here is the link the app. ](http://glimmer.rstudio.com/muschellij2/Shiny_Health_Data/)

Here are some screenshots for intracranial hemmhorage for the US and for Idaho.

<a href="http://simplystatistics.org/2013/05/08/a-shiny-web-app-to-find-out-how-much-medical-procedures-cost-in-your-state/screen-shot-2013-05-08-at-4-57-56-pm/" rel="attachment wp-att-1317"><img class="alignnone size-full wp-image-1317" alt="Screen Shot 2013-05-08 at 4.57.56 PM" src="http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.57.56-PM.png" width="516" height="439" srcset="http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.57.56-PM-300x255.png 300w, http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.57.56-PM.png 516w" sizes="(max-width: 516px) 100vw, 516px" /></a><a href="http://simplystatistics.org/2013/05/08/a-shiny-web-app-to-find-out-how-much-medical-procedures-cost-in-your-state/screen-shot-2013-05-08-at-4-58-09-pm/" rel="attachment wp-att-1318"><img class="alignnone size-full wp-image-1318" alt="Screen Shot 2013-05-08 at 4.58.09 PM" src="http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.58.09-PM.png" width="549" height="460" srcset="http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.58.09-PM-300x251.png 300w, http://simplystatistics.org/wp-content/uploads/2013/05/Screen-Shot-2013-05-08-at-4.58.09-PM.png 549w" sizes="(max-width: 549px) 100vw, 549px" /></a>\

[The R code is here](https://github.com/muschellij2/Shiny_Health_Data) if you want to tweak/modify.
