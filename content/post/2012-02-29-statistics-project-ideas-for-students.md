---
id: 267
title: Statistics project ideas for students
date: 2012-02-29T13:50:05+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/18493330661/statistics-project-ideas-for-students
tumblr_simplystatistics_id:
  - 18493330661
dsq_thread_id:
  - 933655091
categories:
  - Uncategorized
tags:
  - diy
  - education
  - projects
  - R
slug: "statistics-project-ideas-for-students"
---
Here are a few ideas that might make for interesting student projects at all levels (from high-school to graduate school). I&#8217;d welcome ideas/suggestions/additions to the list as well. All of these ideas depend on free or scraped data, which means that anyone can work on them. I&#8217;ve given a ballpark difficulty for each project to give people some idea.

Happy data crunching!

**Data Collection/Synthesis**

  1. Creating a webpage that explains conceptual statistical issues like randomization, margin of error, overfitting, cross-validation, concepts in data visualization, sampling. The webpage should not use any math at all and should explain the concepts so a general audience could understand. Bonus points if you make short 30 second animated youtube clips that explain the concepts. (_Difficulty: Lowish; Effort: Highish_)
  2. Building an aggregator for statistics papers across disciplines that can be the central resource for statisticians. Journals ranging from _PLoS Genetics_ to _Neuroimage_ now routinely publish statistical papers. But there is no one central resource that aggregates all the statistics papers published across disciplines. Such a resource would be **hugely** useful to statisticians. You could build it using blogging software like WordPress so articles could be tagged/you could put the resource in your RSS feeder. (_Difficulty: Lowish; Effort: Mediumish)_

**Data Analyses**

  1. Scrape the LivingSocial/Groupon sites for the daily deals and develop a prediction of how successful the deal will be based on location/price/type of deal. You could use either the RCurl R package or the XML R package to scrape the data. (_Difficulty: Mediumish; Effort: Mediumish_)
  2. You could use the data from your city (<a href="http://simplystatistics.tumblr.com/post/15182715327/list-of-cities-states-with-open-data-help-me-find" target="_blank">here</a> are a few cities with open data) to: (a) identify the best and worst neighborhoods to live in based on different metrics like how many parks are within walking distance, crime statistics, etc. (b) identify concrete measures your city could take to improve different quality of life metrics like those described above - say where should the city put a park, or (c) see if you can predict when/where crimes will occur (like <a href="http://simplystatistics.tumblr.com/post/15628138349/statistical-crime-fighter" target="_blank">these guys did</a>). (_Difficulty: Mediumish; Effort: Highish_)
  3. Download data on state of the union speeches from <a href="http://stateoftheunion.onetwothree.net/texts/index.html" target="_blank">here</a> and use the <a href="http://cran.r-project.org/web/packages/tm/index.html" target="_blank">tm package</a> in R to analyze the patterns of word use over time (_Difficulty: Lowish; Effort: Lowish_)
  4. Use this <a href="http://www.factual.com/t/1fKxck/DonorsChooseorg_Projects" target="_blank">data set</a> from <a href="http://www.donorschoose.org/" target="_blank">Donors Choose</a> to determine the characteristics that make the funding of projects more likely. You could send your results to the Donors Choose folks to help them improve the funding rate for their projects. (_Difficulty: Mediumish; Effort: Mediumish_) 
  5. Which basketball player would you want on your team? <a href="http://simplystatistics.tumblr.com/post/16974142373/why-dont-we-hear-more-about-adrian-dantley-on-espn" target="_blank">Here</a> is a really simple analysis done by Rafa. But it doesn&#8217;t take into account things like defense. If you want to take on this project, you should take a look at this <a href="http://skepticalsports.com/?page_id=1222" target="_blank">Denis Rodman analysis</a> which is the gold standard. (_Difficulty: Mediumish; Effort: Highish_).

**Data visualization**

  1. Creating an R package that wraps the <a href="http://www.omegahat.org/SVGAnnotation/" target="_blank">svgAnnotation</a> package. This package can be used to create dynamic graphics in R, but is still a bit too flexible for most people to use. Writing some wrapper functions that simplify the interface would be potentially high impact. Maybe something like svgPlot() to create simple, dynamic graphics with only a few options (_Difficulty: Mediumish; Effort: Mediumish_). 
  2. The same as project 1 but for <a href="http://mbostock.github.com/d3/" target="_blank">D3.js</a>. The impact could potentially be a bit higher, since the graphics are a bit more professional, but the level of difficulty and effort would also both be higher. (_Difficulty: Highish; Effort: Highish_)
