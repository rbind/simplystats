---
id: 381
title: Expected Salary by Major
date: 2011-11-10T15:04:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/12599452125/expected-salary-by-major
tumblr_simplystatistics_id:
  - 12599452125
dsq_thread_id:
  - 933818990
categories:
  - Uncategorized
tags:
  - advice
  - R
slug: "expected-salary-by-major"
---
In this<a href="http://www.thenation.com/article/164348/audacity-occupy-wall-street" target="_blank">recent editorial</a>about the Occupy Wall Street movement, Richard Kim profiles a protestor that despite having a master&#8217;s degree can&#8217;t find a job. This particular protestorquit his job as a school teacher three years ago and took out a $35K student loan to obtain a master&#8217;s degree in puppetry from the University of Connecticut. I wonder if, before taking his money, UConn showed this person data on job prospects for their puppetry graduates. More generally,I wonder if any university shows their idealist 18 year old freshmen such data.

<img height="600" width="480" src="http://rafalab.jhsph.edu/images/salaryvsrank.png" />

Georgetown&#8217;s <a href="http://cew.georgetown.edu/">Center for Education and the Workforce</a> has an informative<a href="http://cew.georgetown.edu/whatsitworth/">interactive webpage</a>that students can use to find out by-major salary information. I scraped data from this<a href="http://graphicsweb.wsj.com/documents/NILF1111/#term=">Wall Street Journal webpage</a>which also provides, for each major, unemployment rates, salary quartiles, and its rank in popularity. I used these data to compute expected salaries by multiplying median salary by percent of employment. The graph above shows expected salary versus popularity rank (1=most popular) for the 50 most popular majors (Go <a href="http://rafalab.jhsph.edu/images/salarytable.html">here</a> for a complete table and <a href="http://rafalab.jhsph.edu/images/majors.zip">here</a> is the raw data and code). I also included Physics (the 70-th). I used different colors to represent four categories: engineering, math/stat/computers, physical sciences, and the rest. As a baseline I added a horizontal line representing the average salary for a truck driver: $65K, a job currently with<a href="http://www.npr.org/2011/10/13/141325299/a-labor-mismatch-means-trucking-jobs-go-unfilled">plenty of openings</a>. Different font sizes are used only to make names fit.A couple of observations stand out. First, only one of the top 10 most popular majors,Computer Science,has a higher expected salary than truck drivers. Second, Psychology, the fifth most popular major, has an expected salary of $40K and, as seen in <a href="http://rafalab.jhsph.edu/images/salarytable.html" target="_blank">the table</a>, an unemployment rate of 6.1%; almost three times worse than nursing.

**A few editorial remarks:**1)I understand that being a truck driver is very hard and that there is little room for career development. 2) I am not advocating that people pick majors based on future salaries. 3) I think college freshmen deserve to know the data given how much money they fork over to us. 4) The graph is for bachelor&#8217;s degrees, not graduate education. The <a href="http://cew.georgetown.edu/whatsitworth/">CEW</a> website includes data for graduate degrees. Note that Biology shoots way up with a graduate degree. 5) For those interested in a PhD in Statistics I recommend you major in Math with a minor in a liberal arts subject, such as English, while taking as many programming classes as you can. We all know Math is the base for everything statisticians do, but why English? Students interested in academia tend to underestimate the <a href="http://bulletin.imstat.org/2011/09/terence%E2%80%99s-stuff-speaking-reading-writing/" target="_blank">importance of writing and communicating</a>.

**Related articles:**<a href="http://www.nytimes.com/2011/11/06/education/edlife/why-science-majors-change-their-mind-its-just-so-darn-hard.html?_r=2" target="_blank">This</a>NY Times article describes how/why students are leaving the sciences. <a href="http://marginalrevolution.com/marginalrevolution/2011/11/college-has-been-oversold.html">Here</a>, Alex Tabarrok describes big changes in the balance of majors between 1985 and today and <a href="http://marginalrevolution.com/marginalrevolution/2011/11/not-from-the-onion-3.html" target="_blank">here</a>he shares his thoughts on Richard Kim&#8217;s editorial. Matt Yglesias explains that<a href="http://thinkprogress.org/yglesias/2011/11/08/363587/unemployment-is-rising-across-the-board/" target="_blank">unemploymentis rising across the board</a>. Finally, Peter Orszag share <a href="http://www.bloomberg.com/news/2011-11-09/winds-of-economic-change-blow-away-college-degree-peter-orszag.html" target="_blank">his views</a> on how a changing world is changing the value of a college degree.

Hat tip to David Santiago for sending various of these links and Harris Jaffee for help with scrap<strike>p</strike>ing.
