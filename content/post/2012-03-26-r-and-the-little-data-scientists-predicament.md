---
id: 237
title: "R and the little data scientist's predicament"
date: 2012-03-26T15:00:05+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/19954347499/r-and-the-little-data-scientists-predicament
tumblr_simplystatistics_id:
  - 19954347499
dsq_thread_id:
  - 933698519
categories:
  - Uncategorized
tags:
  - little data scientists predicament
  - statistical literacy
  - visualization
slug: "r-and-the-little-data-scientists-predicament"
---
I just read this <a href="http://www.slate.com/articles/technology/technology/2012/03/ruby_ruby_on_rails_and__why_the_disappearance_of_one_of_the_world_s_most_beloved_computer_programmers_.single.html" target="_blank">fascinating post</a> on _why, apparently a bit of a cult hero among enthusiasts of the Ruby programming language. One of the most interesting bits was <a href="http://viewsourcecode.org/why/hacking/theLittleCodersPredicament.html" target="_blank">The Little Coder&#8217;s Predicament</a>, which boiled down essentially says that computer programming languages have grown too complex - so children/newbies can&#8217;t get the instant gratification when they start programming. He suggested a simplified &#8220;gateway language&#8221; that would get kids fired up about programming, because with a simple line of code or two they could make the computer **do things** like play some music or make a video. 

I feel like there is a similar ramp up with data scientists. To be able to do anything cool/inspiring with data you need to know (a) a little statistics, (b) a little bit about a programming language, and (c) quite a bit about syntax. 

Wouldn&#8217;t it be cool if there was an R package that solved the little data scientist&#8217;s predicament? The package would have to have at least some of these properties:

  1. It would have to be easy to load data sets, one line of not complicated code. You could write an interface for RCurl/read.table/download.file for a defined set of APIs/data sets so the command would be something like: load(&#8220;education-data&#8221;) and it would load a bunch of data on education. It would handle all the messiness of scraping the web, formatting data, etc. in the background. 
  2. It would have to have a lot of really easy visualization functions. Right now, if you want to make pretty plots with ggplot(), plot(), etc. in R, you need to know all the syntax for pch, cex, col, etc. The plotting function should handle all this behind the scenes and make super pretty pictures. 
  3. It would be awesome if the functions would include some sort of dynamic graphics (with <a href="http://www.omegahat.org/SVGAnnotation/" target="_blank">svgAnnotation</a> or a wrapper for <a href="http://mbostock.github.com/d3/" target="_blank">D3.js</a>). Again, the syntax would have to be really accessible/not too much to learn. 

That alone would be a huge start. In just 2 lines kids could load and visualize cool data in a pretty way they could show their parents/friends. 
