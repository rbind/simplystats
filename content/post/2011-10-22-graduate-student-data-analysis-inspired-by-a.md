---
id: 400
title: Graduate student data analysis inspired by a high-school teacher
date: 2011-10-22T13:02:06+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/11770724755/graduate-student-data-analysis-inspired-by-a
tumblr_simplystatistics_id:
  - 11770724755
dsq_thread_id:
  - 933692953
categories:
  - Uncategorized
tags:
  - education
  - reproducibility
slug: "graduate-student-data-analysis-inspired-by-a"
---
I love watching TED talks. One of my absolute favorites is the <a href="http://www.ted.com/talks/dan_meyer_math_curriculum_makeover.html" target="_blank">talk</a> by Dan Meyer on how math class needs a makeover. Dan also has one of the more fascinating <a href="http://blog.mrmeyer.com/" target="_blank">blogs</a> I have read. He talks about math education, primarily K-12 education.  His posts on <a href="http://blog.mrmeyer.com/?p=3055" target="_blank">curriculum design</a>, <a href="http://blog.mrmeyer.com/?p=811" target="_blank">assessment </a>, <a href="http://blog.mrmeyer.com/?p=154" target="_blank">work ethic</a>, and <a href="http://blog.mrmeyer.com/?p=133" target="_blank">homework</a> are really, really good. In fact, just go read all his <a href="http://blog.mrmeyer.com/?page_id=2716" target="_blank">author choices</a>. You won&#8217;t regret it. 

The best quote from the talk is:

> Ask yourselves, what problem have you solved, ever, that was worth solving, where you knew knew all of the given information in advance? Where you didn&#8217;t have a surplus of information and have to filter it out, or you didn&#8217;t have insufficient information and have to go find some?

<!-- more -->

Many of the data analyses I have done in classes/assigned in class have focused on a problem with exactly the right information with relatively little extraneous data or missing information. But I have been slowly evolving these problems; as an example <a href="http://biostat.jhsph.edu/~jleek/qual2011.pdf" target="_blank">here</a> is a data analysis project that we developed last year for the qualifying exam at JHU. This project is what I consider a first step toward a &#8220;less helpful&#8221; project model. 

The project was inspired by this <a href="http://marginalrevolution.com/marginalrevolution/2010/09/the-small-schools-myth.html" target="_blank">blog post</a> at marginal revolution which Rafa suggested. As with the homework problem Dan dissects in his talk, there are layers to this problem:

  1. Understanding the question
  2. Downloading and filtering the data
  3. Exploratory analysis
  4. Fitting models/interpreting results
  5. Synthesis and writing the results up
  6. Reproducibility of the R code

For this analysis, I was pretty specific with 1. Understanding the question:

> <p class="MsoNormal">
>   <span>(1) The association between enrollment and the percent of students scoring “Advanced” on the MSA in Reading and Math in the 5<sup>th</sup> grade. </span>
> </p>
> 
> <p class="MsoNormal">
>   <span>(2) The change in the number of students scoring “Advanced” in Reading and Math from one year to the next (at minimum consider the change from 2009-2010) versus enrollment. </span>
> </p>
> 
> <p class="MsoNormal">
>   <span>(3) Potential reasons for results like those in <strong>Table 1</strong>. <span> </span></span>
> </p>

<p class="MsoNormal">
  Although I didn&#8217;t mention the key idea from the Marginal Revolution post. I think for a qualifying exam, this level of specificity is necessary, but for an in-class project I think I would have removed this information so students had to &#8220;discover the question&#8221; themselves. 
</p>

<p class="MsoNormal">
  I was also pretty specific with the data source suggesting the Maryland Education department&#8217;s website. However, several students went above and beyond and found other data sources, or downloaded more data than I suggested. In the future, I think I will leave this off too. My google/data finding skills don&#8217;t hold a candle to those of my students. 
</p>

<p class="MsoNormal">
  Steps 3-5 were summed up with the statement: 
</p>

> <p class="MsoNormal">
>   <span>Your project is to analyze data from the MSA and write a short letter either in favor of or against spending money to decrease school sizes.</span>
> </p>

<p class="MsoNormal">
  <span>This is one part of the exam I&#8217;m happy with. It is sufficiently vague to let the students come to their own conclusions. It also suggests that the students <strong>should</strong> draw conclusions and support them with statistical analyses. One of the major difficulties I have struggled with in teaching this class is getting students to state a conclusion as a result of their analysis and to quantify how uncertain they are about that decision. In my mind, this is different from just the uncertainty associated with a single parameter estimate. </span>
</p>

<p class="MsoNormal">
  It  was surprising how much requiring reproducibility helped students focus their analyses. I think because they had to organize/collect their code which, helped them organize their analysis. Also, there was a strong correlation between reproducibility and quality of the written reports.
</p>

<p class="MsoNormal">
  Going forward I have a couple of ideas of how I would change my data analysis projects:
</p>

  1. Be less helpful - be less clear about the problem statement, data sources, etc. I definitely want students to get more practice formulating problems. 
  2. Focus on writing/synthesis - my students are typically very good at fitting models, but sometimes struggle with putting together the &#8220;story&#8221; of an analysis. 
  3. Stress much less about whether specific methods will work well on the data analyses I suggest. One of the more helpful things I think these messy problems produce is a chance to figure out what works and what doesn&#8217;t on real world problems. 

**Related Posts:** Rafa on <a href="http://simplystatistics.tumblr.com/post/10764298034/the-future-of-graduate-education" target="_blank">the future of graduate education</a>, <a href="http://simplystatistics.tumblr.com/post/11655593971/do-we-really-need-applied-statistics-journals" target="_blank">Roger on applied statistics journals</a>.
