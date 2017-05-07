---
id: 1168
title: "Data science only poses a threat to (bio)statistics if we don't adapt"
date: 2013-04-15T15:19:16+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_483840105005184
al2fb_facebook_link_time:
  - 2013-04-15T19:19:21+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1213203404
categories:
  - Uncategorized
slug: "data-science-only-poses-a-threat-to-biostatistics-if-we-dont-adapt"
---
We have previously mentioned on this blog how [statistics needs better marketing](http://simplystatistics.org/2012/08/14/statistics-statisticians-need-better-marketing/). Recently, Karl B. has suggested that "[Data science is statistics](http://kbroman.wordpress.com/2013/04/05/data-science-is-statistics/)" and Larry W. has wondered if "[Data science is the end of statistics?](http://normaldeviate.wordpress.com/2013/04/13/data-science-the-end-of-statistics/)" I think there are a couple of types of data science and that each has a different relationship to the discipline of academic statistics:

  1. **Data science as marketing tool**. Data analytics, data science, big data, etc. are terms that companies who already did something (IT infrastructure, consulting, database management, etc.) throw around to make them sound like they are doing the latest and greatest thing. These marketers are dabblers in what I would call the real "science of data" or maybe deal with just one part of the data pipeline. I think they pose no threat to the statistics community other than by generating backlash by over promising on the potential of data science or diluting the term to the point of being almost non-sensical.
  2. **Data science as business analytics.** Another common use of "data science" is to describe the exact same set of activities that use to be performed by business analytics people, maybe allowing for some growth in the size of the data sets. This might be a threat to folks who do statistics in business schools - although more likely it will be beneficial to those programs as there is growth in the need for business-oriented statisticians.
  3. **Data science as big data engineer** Sometimes data science refers to people who do stuff with huge amounts of data. Larry refers to this in his post when he talks about people [working on billions of data points](http://normaldeviate.wordpress.com/2013/04/13/data-science-the-end-of-statistics/). Most classically trained statisticians aren't comfortable with data of this size. But at places like Google - where big data sets are routine - the infrastructure is built [so that statisticians can access and compress the parts of the data that they need](http://simplystatistics.org/2013/02/15/interview-with-nick-chamandy-statistician-at-google/) to do their jobs. I don't think this is necessarily a threat to statistics; but we should definitely be integrating data access into our curriculum.
  4. **Data science as replacement for statistics **Some people (and I think it is the minority) are exactly referring to things that statisticians do when they talk about data science. This means manipulating, collecting, and analyzing data, then making inferences to a population or predictions about what will happen next. This is, of course, a threat to statisticians. Some places, like [NC State](http://analytics.ncsu.edu/) and [Columbia](http://idse.columbia.edu/), are tackling this by developing centers/institutes/programs with data science in the name. But I think that is a little dangerous. The data don't matter - it is the problem you can solve with the data. So the key thing is that these institutes need to focus on solving real problems - not just churning out people who know a little R, a little SQL, and a little Python.

So why is #4 happening? I think one reason is reputation. Larry mentions that a statistician produces an estimate and a confidence interval and maybe the confidence interval is too wide. I think he is on to something there, but I think it is a bigger problem. [As Roger has pointed out](http://simplystatistics.org/2012/06/22/statistics-and-the-science-club/) - statisticians often see themselves as referees - rather scientists/business people. So a lot of people have the experience of going to a statistician and feel like they have been criticized for bad experimental design, too small a sample size, etc. These issues are hugely important - but sometimes you have to make due with what you have. I think data scientists in category 4 are taking advantage of a cultural tendency of statisticians to avoid making concrete decisions.

A second reason is that some statisticians have avoided getting their hands dirty. "Hands clean" statisticians don't  get the data from the database, or worry about the data munging, or match identifiers, etc. They wait until the data are nicely formated in a matrix to apply their methods. To stay competitive, we need to produce more "hands dirty" statisticians who are willing to go beyond [schlep blindnes](http://simplystatistics.org/2012/05/28/schlep-blindness-in-statistics/)s and handle all aspects of a data analysis. In academia, we can encourage this by incorporating more of those issues into our curriculum.

Finally, I think statisticians focus on optimality hurts us. Our field grew up in an era where data was sparse and we had to squeeze every last ounce of information out what little data we had. Those constraints led to a cultural focus on optimality to a degree that is no longer necessary when data are abundant. In fact, an abundance of data is [often unreasonably effective even with suboptimal methods](http://www.youtube.com/watch?v=yvDCzhbjYWs). "Data scientists" understand this and shoot for the 80% solution that is good enough in most cases.

In summary I don't think statistics will be killed off by data science. Most of the hype around data science is actually somewhat removed from our field (see above). But I do think that it is worth considering some potential changes that reposition our discipline as the most useful for answering questions with data. Here are some concrete proposals:

  1. Remove some theoretical requirements and add computing requirements to statistics curricula.
  2. Focus on statistical writing, presentation, and communication as a main part of the curriculum.
  3. Focus on positive interactions with collaborators (being a scientist) rather than immediately going to the referee attitude.
  4. Add a unit on translating scientific problems to statistical problems.
  5. Add a unit on data munging and getting data from databases.
  6. Integrating real and live data analyses into our curricula.
  7. Make all our students create an R package (a data product) before they graduate.
  8. Most important of all have a "big tent" attitude about what constitutes statistics.

&nbsp;
