---
id: 312
title: 'A wordcloud comparison of the 2011 and 2012 #SOTU'
date: 2012-01-25T04:02:39+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/16448577464/a-wordcloud-comparison-of-the-2011-and-2012-sotu
tumblr_simplystatistics_id:
  - 16448577464
dsq_thread_id:
  - 948779589
categories:
  - Uncategorized
tags:
  - R
  - sotu
  - visualization
  - wordcloud
slug: "a-wordcloud-comparison-of-the-2011-and-2012-sotu"
---
I wrote a quick (and very dirty) <a href="http://biostat.jhsph.edu/~jleek/code/sotu2011-2012comparison.R" target="_blank">R script</a> for creating a comparison cloud and a commonality cloud for President Obama&#8217;s 2011 and 2012 State of the Union speeches. The cloud on the left shows words that have different frequencies between the two speeches and the cloud on the right shows the words in common between the two speeches. <a href="http://biostat.jhsph.edu/~jleek/code/sotu-wordcloud.png" target="_blank">Here</a> is a higher resolution version.

<img height="345" src="http://biostat.jhsph.edu/~jleek/code/sotu-wordcloud.png" width="600" />

The focus on jobs hasn&#8217;t changed much. But it is interesting how the 2012 speech seems to focus more on practical issues (tax, pay, manufacturing, oil) versus more emotional issues in 2011 (future, schools, laughter, success, dream).

The <a href="http://cran.r-project.org/web/packages/wordcloud/index.html" target="_blank">wordcloud</a> R package does all the heavy lifting.
