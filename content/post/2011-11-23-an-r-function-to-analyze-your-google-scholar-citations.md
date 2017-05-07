---
id: 366
title: An R function to analyze your Google Scholar Citations page
date: 2011-11-23T14:07:53+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/13203811645/an-r-function-to-analyze-your-google-scholar-citations
tumblr_simplystatistics_id:
  - 13203811645
dsq_thread_id:
  - 934281952
categories:
  - Uncategorized
tags:
  - diy
  - Google Scholar Citations
  - R
  - web scraping
slug: "an-r-function-to-analyze-your-google-scholar-citations"
---
Google scholar has now made Google Scholar Citations profiles available to anyone. You can read about these profiles and set one up for yourself <a href="http://scholar.google.com/intl/en/scholar/citations.html" target="_blank">here</a>.

I asked <a href="http://www.jhsph.edu/faculty/directory/profile/5110/Muschelli/John" target="_blank">John Muschelli</a> and <a href="http://www.biostat.jhsph.edu/~ajaffe/" target="_blank">Andrew Jaffe</a>to write me a function that would download my Google Scholar Citations data so I could play with it. Then they got all crazy on it and wrote a couple of really neat functions. All cool/interesting components of these functions are their ideas and any bugs were introduced by me when I was trying to fiddle with the code at the end. 

So how does it work? <a href="http://biostat.jhsph.edu/~jleek/code/googleCite.r" target="_blank">Here</a> is the code. You can source the functions like so:



source(&#8220;http://biostat.jhsph.edu/~jleek/code/googleCite.r&#8221;)

This will install the following packages if you don&#8217;t have them: wordcloud, tm, sendmailR, RColorBrewer. Then you need to find the url of a google scholar citation page. Here is Rafa Irizarry&#8217;s:

<a href="http://scholar.google.com/citations?user=nFW-2Q8AAAAJ" target="_blank"><a href="http://scholar.google.com/citations?user=nFW-2Q8AAAAJ" target="_blank">http://scholar.google.com/citations?user=nFW-2Q8AAAAJ</a></a>

You can then call the googleCite function like this:

out = googleCite(&#8220;http://scholar.google.com/citations?user=nFW-2Q8AAAAJ;,pdfname=&#8221;rafa_wordcloud.pdf;)

or search by name like this:

out = searchCite(&#8220;Rafa Irizarry&#8221;,pdfname=&#8221;rafa_wordcloud.pdf&#8221;)

The function will download all of Rafa&#8217;s citation data and put it in the matrix out. It will also make wordclouds of (a) the co-authors on his papers and (b) the titles of his papers and save them in the pdf file specified (There is an option to turn off plotting if you want). Here is what Rafa&#8217;s clouds look like:

<img height="250" src="http://biostat.jhsph.edu/~jleek/code/rafa_wordcloud.png" width="500" />

We have also written a little function to calculate many of the popular citation indices. You can call it on the output like so:

gcSummary(out)

When you download citation data, an email with the data table will also be sent to Simply Statistics so we can collect information on who is using the function and perform population-level analyses.

If you liked this function you might also be interesting in our <a href="http://simplystatistics.tumblr.com/post/11271228367/datascientist">R function to determine if you are a data scientist</a>, or in some of the other stuff going on over at <a href="http://simplystatistics.tumblr.com/" target="_blank">Simply Statistics</a>.

Enjoy!
