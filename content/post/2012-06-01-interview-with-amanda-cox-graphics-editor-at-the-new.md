---
id: 185
title: 'Interview with Amanda Cox - Graphics Editor at the New York Times'
date: 2012-06-01T14:57:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/24196201238/interview-with-amanda-cox-graphics-editor-at-the-new
tumblr_simplystatistics_id:
  - 24196201238
dsq_thread_id:
  - 935018198
categories:
  - Uncategorized
tags:
  - Amanda Cox
  - graphics
  - Interactive
  - interview
  - New York Times
  - NY Times
  - Visaulization
slug: "interview-with-amanda-cox-graphics-editor-at-the-new"
---
<div class="im">
  <strong>Amanda Cox </strong>
</div>

<div class="im">
  <strong><br /></strong>
</div>

<div class="im">
  <strong><img height="294" src="http://biostat.jhsph.edu/~jleek/cox.jpg" width="200" /></strong>
</div>

<div class="im">
  <strong><br /></strong>
</div>

<div class="im">
  <strong><br /></strong>Amanda Cox received her M.S. in statistics from the University of Washington in 2005. She then moved to the New York Times, where she is a graphics editor. She, and the graphics team at the New York Times, are responsible for many of the cool, informative, and interactive graphics produced by the Times. For example, <a href="http://www.nytimes.com/interactive/2009/11/06/business/economy/unemployment-lines.html" target="_blank">this</a>, <a href="http://www.nytimes.com/interactive/2009/07/02/business/economy/20090705-cycles-graphic.html" target="_blank">this</a> and <a href="http://www.nytimes.com/interactive/2010/02/26/sports/olympics/20100226-olysymphony.html" target="_blank">this</a> (the last one, Olympic Symphony, is one of my all time favorites). 
</div>

<div class="im">
  <strong><br /></strong>
</div>

<div class="im">
  <strong>You have a background in statistics, do you consider yourself a statistician? Do you consider what you do statistics?</strong><br /><span></span>
</div>

<div class="im">
  <span><br /></span>
</div>

<div class="im">
  <span>I don&#8217;t deal with uncertainty in a formal enough way to call what I do statistics, or myself a statistician. (My technical title is &#8220;graphics editor,&#8221; but no one knows what this means. On the good days, what we do is &#8220;journalism.&#8221;) Mark Hansen, a statistician at UCLA, has possibly changed my thinking on this a little bit though, by asking who I want to be the best at visualizing data, if not statisticians.</span>
</div>

<div class="im">
  <span><br /></span>
</div>

<div class="im">
  <strong>How did you end up at the NY Times?</strong>
</div>

<span>In the middle of my first year of grad school (in statistics at the University of Washington), I started applying for random things. One of them was to be a </span><a href="http://www.nytimes-internship.com/" target="_blank">summer intern</a><span> in the graphics department at the Times.</span>

**<span>How are the graphics and charts you develop different than </span><span>producing graphs for a quantitative/scientific audience?</span>**

<div class="im">
  <span><br /></span>
</div>

<div class="im">
  <span>&#8220;Feels like homework&#8221; is a really negative reaction to a graphic or a story here. In practice, that means a few things: we don&#8217;t necessarily assume our audience already cares about a topic. We try to get rid of jargon, which can be useful shorthand for technical audiences, but doesn&#8217;t belong in a newspaper. Most of our graphics can stand on their own, meaning you shouldn&#8217;t need to read any accompanying text to understand the basic point. Finally, we probably pay more attention to things like typography and design, which, done properly, are really about hierarchy and clarity, and not just about making things cute. </span>
</div>

**<span><br /></span>**

**<span>How do you use R to prototype graphics? </span>**

<span>I sketch in R, which mostly just means reading data, and trying on different forms or subsets or levels of aggregation. It&#8217;s nothing fancy: usually just points and lines and text from base graphics. For print, I will sometimes clean up a pdf of R output in Illustrator. You can see some of that in practice at </span><a href="http://chartsnthings.tumblr.com/" target="_blank">chartsnthings.tumblr.com</a><span>, which where one of my colleagues, Kevin Quealy, posts some of the department&#8217;s sketches. (Kevin and I are the only regular R users here, so the amount of R used on chartsnthings is not at all representative of NYT graphics as a whole.)</span>

**<span>Do you have any examples where the R version and the eventual final web version are nearly identical?</span>**

<span>Real interactivity changes things, so my use of R for web graphics is mostly just a proof-of-concept thing. </span><span>(Sometimes I will also generate &#8220;poor-man&#8217;s interactivity,&#8221; which means hitting the pagedown key on a pdf of charts made in a for loop.) But here are a couple of proof-of-concept sketches, where the initial R output doesn&#8217;t look so different from the final web version.</span>

<a href="http://www.nytimes.com/interactive/2009/11/06/business/economy/unemployment-lines.html" target="_blank">The Jobless Rate for People Like You</a>

<img height="354" src="http://biostat.jhsph.edu/~jleek/jobless.png" width="400" />

<a href="http://www.nytimes.com/interactive/2009/07/31/business/20080801-metrics-graphic.html" target="_blank">How Different Groups Spend Their Day</a>

![](http://biostat.jhsph.edu/~jleek/groups.png)

**<span>You consistently produce arresting and informative graphics about </span><span>a range of topics. How do you decide on which topics to tackle?</span>**

<span>News value and interestingness are probably the two most important criteria for deciding what to work on. In an ideal world, you get both, but sometimes, one is enough (or the best you can do).</span>

**<span>Are your project choices motivated by availability of data?</span>**

<span>Sure. The availability of data also affects the scope of many projects. For example, the guys who work on our live election results will probably map them by county, even though precinct-level results are </span><a href="http://www.stanford.edu/~jrodden/jrhome_files/electiondata.htm" target="_blank">so much better</a><span>. But precinct-level data isn&#8217;t generally available in real time.</span>

**<span>What is the typical turn-around time from idea to completed project?</span>**

<span>The department is most proud of some of its one-day, breaking news work, but very little of that is what I would think of as data-heavy.  The real answer to &#8220;how long does it take?&#8221; is &#8220;how long do we have?&#8221; Projects always find ways to expand to fill the available space, which often ranges from a couple of days to a couple of weeks.</span>

<span><br /></span>

**<span>Do you have any general principles for how you make complicated </span><span>data understandable to the general public?</span>**

<div class="im">
</div>

<span>I&#8217;m a big believer in learning by example. If you annotate three points in a scatterplot, I&#8217;m probably good, even if I&#8217;m not super comfortable reading scatterplots. I also think the words in a graphic should highlight the relevant pattern, or an expert&#8217;s interpretation, and not merely say &#8220;Here is some data.&#8221; The annotation layer is critical, even in a newspaper (where the data is not usually super complicated).</span>

**<span>What do you consider to be the most informative graphical elements or interactive features that you consistently use?</span>**

<span>I like sliders, because there&#8217;s something about them that suggests story (beginning-middle-end), even if the thing you&#8217;re changing isn&#8217;t time. Using movement in a way that means something, like </span><a href="http://www.nytimes.com/packages/html/newsgraphics/pages/hp/2008/2008-06-03-1800.html" target="_blank">this</a><span> or </span><a href="http://www.nytimes.com/interactive/2009/07/02/business/economy/20090705-cycles-graphic.html" target="_blank">this</a><span>, is still also fun, because it takes advantage of one of the ways the web is different from print.</span>
