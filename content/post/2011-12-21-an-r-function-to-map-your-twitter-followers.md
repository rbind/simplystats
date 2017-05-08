---
id: 338
title: An R function to map your Twitter Followers
date: 2011-12-21T17:11:00+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/14568185310/an-r-function-to-map-your-twitter-followers
tumblr_simplystatistics_id:
  - 14568185310
dsq_thread_id:
  - 933697945
categories:
  - Uncategorized
tags:
  - diy
  - R
  - Twitter
  - visualization
slug: "an-r-function-to-map-your-twitter-followers"
---
I wrote a little function to make a personalized map of who follows you or who you follow on Twitter. The idea for this function was inspired by some plots I discussed in a <a href="http://simplystatistics.tumblr.com/post/11614784508/spectacular-plots-made-entirely-in-r" target="_blank">previous post</a>. I also found a lot of really useful code over at flowing data <a href="http://flowingdata.com/2011/05/11/how-to-map-connections-with-great-circles/" target="_blank">here</a>. 

The function uses the packages twitteR, maps, geosphere, and RColorBrewer. If you don&#8217;t have the packages installed, when you source the twitterMap code, it will try to install them for you. The code also requires you to have a working internet connection. 

_One word of warning is that if you have a large number of followers or people you follow, you may be rate limited by Twitter and unable to make the plot._

To make your personalized twitter map, first source the <a href="http://biostat.jhsph.edu/~jleek/code/twitterMap.R" target="_blank">function</a>:

> source(&#8220;http://biostat.jhsph.edu/~jleek/code/twitterMap.R&#8221;)

The function has the following form: 

twitterMap <- function(userName,userLocation=NULL,fileName=&#8221;twitterMap.pdf&#8221;,nMax = 1000,plotType=c(&#8220;followers&#8221;,&#8221;both&#8221;,&#8221;following&#8221;))

with arguments:

  * userName - the twitter username you want to plot
  * userLocation - an optional argument giving the location of the user, necessary when the location information you have provided Twitter isn&#8217;t sufficient for us to find latitude/longitude data
  * fileName - the file where you want the plot to appear
  * nMax - The maximum number of followers/following to get from Twitter, this is implemented to avoid rate limiting for people with large numbers of followers. 
  * plotType - if &#8220;both&#8221; both followers/following are plotted, etc. 

Then you can create a plot with both followers/following like so: 

> twitterMap(&#8220;simplystats&#8221;)

Here is what the resulting plot looks like for our Twitter Account:

<img height="550" src="http://biostat.jhsph.edu/~jleek/code/simplystats.png" width="500" />

If your location can&#8217;t be found or latitude longitude can&#8217;t be calculated, you may have to chose a bigger city near you. The list of cities used by twitterMap can be found like so:

>library(maps)

>data(world.cities)

>grep(&#8220;Baltimore&#8221;, world.cities[,1])

If your city is in the database, this will return the row number of the world.cities data frame corresponding to your city. 

<div>
  If you like this function you may also like our function to determine if you are a <a href="http://simplystatistics.tumblr.com/post/11271228367/datascientist" target="_blank">data scientist</a> or to analyze your <a href="http://simplystatistics.tumblr.com/post/13203811645/an-r-function-to-analyze-your-google-scholar-citations" target="_blank">Google Scholar citations page</a>.
</div>

<div>
</div>

<div>
  <strong>Update</strong>: The bulk of the heavy lifting done by these functions is performed by Jeff Gentry&#8217;s very nice <a href="http://cran.r-project.org/web/packages/twitteR/" target="_blank">twitteR </a>package and <a href="http://flowingdata.com/2011/05/11/how-to-map-connections-with-great-circles/" target="_blank">code</a> put together by Nathan Yau over at FlowingData. This is really an example of standing on the shoulders of giants. 
</div>
