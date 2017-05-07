---
id: 3227
title: "swirl and the little data scientist's predicament"
date: 2014-08-13T15:41:58+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_685288981526961
al2fb_facebook_link_time:
  - 2014-08-13T19:42:04+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2924535759
categories:
  - Uncategorized
slug: "swirl-and-the-little-data-scientists-predicament"
---
<p style="color: #333333;">
  <em>Editor's note: This is a repost of "<a href="http://simplystatistics.org/2012/03/26/r-and-the-little-data-scientists-predicament/">R and the little data scientist's predicament</a>". A brief idea for an update is presented at the end in italics. </em>
</p>

<p style="color: #333333;">
  I just read this <a href="http://www.slate.com/articles/technology/technology/2012/03/ruby_ruby_on_rails_and__why_the_disappearance_of_one_of_the_world_s_most_beloved_computer_programmers_.single.html" target="_blank">fascinating post</a> on _why, apparently a bit of a cult hero among enthusiasts of the Ruby programming language. One of the most interesting bits was <a href="http://viewsourcecode.org/why/hacking/theLittleCodersPredicament.html" target="_blank">The Little Coder’s Predicament</a>, which boiled down essentially says that computer programming languages have grown too complex - so children/newbies can’t get the instant gratification when they start programming. He suggested a simplified “gateway language” that would get kids fired up about programming, because with a simple line of code or two they could make the computer <strong>do things</strong> like play some music or make a video.
</p>

<p style="color: #333333;">
  I feel like there is a similar ramp up with data scientists. To be able to do anything cool/inspiring with data you need to know (a) a little statistics, (b) a little bit about a programming language, and (c) quite a bit about syntax.
</p>

<p style="color: #333333;">
  Wouldn’t it be cool if there was an R package that solved the little data scientist’s predicament? The package would have to have at least some of these properties:
</p>

<ol style="color: #333333;">
  <li>
    It would have to be easy to load data sets, one line of not complicated code. You could write an interface for RCurl/read.table/download.file for a defined set of APIs/data sets so the command would be something like: load(“education-data”) and it would load a bunch of data on education. It would handle all the messiness of scraping the web, formatting data, etc. in the background.
  </li>
  <li>
    It would have to have a lot of really easy visualization functions. Right now, if you want to make pretty plots with ggplot(), plot(), etc. in R, you need to know all the syntax for pch, cex, col, etc. The plotting function should handle all this behind the scenes and make super pretty pictures.
  </li>
  <li>
    It would be awesome if the functions would include some sort of dynamic graphics (with<a href="http://www.omegahat.org/SVGAnnotation/" target="_blank">svgAnnotation</a> or a wrapper for <a href="http://mbostock.github.com/d3/" target="_blank">D3.js</a>). Again, the syntax would have to be really accessible/not too much to learn.
  </li>
</ol>

<p style="color: #333333;">
  That alone would be a huge start. In just 2 lines kids could load and visualize cool data in a pretty way they could show their parents/friends.
</p>

<p style="color: #333333;">
  <em>Update: Now that Nick and co. have created <a href="http://swirlstats.com/">swirl </a>the technology is absolutely in place to have people do something awesome quickly. You could imagine taking the airplane data and immediately having them make a plot of all the flights using ggplot. Or any number of awesome government data sets and going straight to ggvis. Solving this problem is now no longer technically a challenge, it is just a matter of someone coming up with an amazing swirl module that immediately sucks students in. This would be a really awesome project for a grad student or even an undergrad with an interest in teaching. If you do do it, you should absolutely send it our way and we'll advertise the heck out of it!</em>
</p>
